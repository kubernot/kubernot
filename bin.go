// +build bin

package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

type Combo struct {
	OS   string
	ARCH string
}

var (
	Basename     = "conntroll"
	Path         = "bin"
	Delimeter    = "-"
	DefaultCombo = Combo{runtime.GOOS, runtime.GOARCH}
	GlobalEnv = []string{
		"CGO_ENABLED=0",
	}
)

func (c Combo) ReleaseName() string {
	return strings.Join([]string{Basename, c.OS, c.ARCH}, Delimeter)
}

func (c Combo) Env() []string {
	return append(
		GlobalEnv,
		fmt.Sprintf("GOOS=%s", c.OS),
		fmt.Sprintf("GOARCH=%s", c.ARCH),
	)
}

func parseCombo(osarch string) Combo {
	parts := strings.Split(osarch, "/")
	if len(parts) != 2 {
		log.Fatalln("error parsing combo", osarch)
	}
	return Combo{
		OS:   parts[0],
		ARCH: parts[1],
	}
}

func main() {
	var (
		stripFlag bool
		upxFlag   bool
	)

	flag.BoolVar(&stripFlag, "strip", false, "strip binary")
	flag.BoolVar(&upxFlag, "upx", false, "compress binary with upx")
	flag.Parse()

	combos := []Combo{}
	for _, arg := range flag.Args() {
		combos = append(combos, parseCombo(arg))
	}

	if len(combos) == 0 {
		combos = append(combos, DefaultCombo)
	}

	for _, c := range combos {
		var (
			build = exec.Command(
				"go", "build",
				"-trimpath",
				"-v",
				"-o", filepath.Join(Path, c.ReleaseName()),
				".",
			)
			strip = exec.Command(
				"strip",
				filepath.Join(Path, c.ReleaseName()),
			)
			upx = exec.Command(
				"upx",
				filepath.Join(Path, c.ReleaseName()),
			)
		)

		build.Env = append(os.Environ(), c.Env()...)
		build.Stdout = os.Stdout
		build.Stderr = os.Stderr
		log.Println(c.Env(), build)

		if err := build.Run(); err != nil {
			log.Fatalln(err)
		}

		if stripFlag && c.OS == "linux" {
			if err := strip.Run(); err != nil {
				log.Fatalln(err)
			}
		}

		if upxFlag {
			upx.Stdout = os.Stdout
			upx.Stderr = os.Stderr
			if err := upx.Run(); err != nil {
				log.Fatalln(err)
			}
		}

		if c == DefaultCombo {
			for _, bin := range []string{"conntroll", "agent", "hub", "client"} {
				src := filepath.Join(Path, fmt.Sprintf("%s-%s-%s", Basename, c.OS, c.ARCH))
				dst := filepath.Join(Path, bin)
				ln(src, dst)
			}
		}
	}
}

func ln(from, to string) {
	lnf := exec.Command("ln", "-f", "-v", from, to)
	lnf.Stdout = os.Stdout
	lnf.Stderr = os.Stderr
	if err := lnf.Run(); err != nil {
		log.Fatalln(err)
	}
}
