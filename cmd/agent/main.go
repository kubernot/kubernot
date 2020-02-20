package main

import (
	"log"
	"os"

	"k0s.io/k0s/pkg/cli/agent"
)

func main() {
	log.SetFlags(log.Ldate | log.Ltime | log.Lshortfile)

	agent.Run(os.Args[1:])
}
