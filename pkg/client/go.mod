module k0s.io/pkg/client

go 1.21

require (
	github.com/VojtechVitek/yaml-cli v0.0.5
	github.com/abiosoft/ishell v2.0.0+incompatible
	github.com/btwiuse/pretty v0.2.1
	golang.org/x/crypto v0.5.0
	gopkg.in/yaml.v3 v3.0.1
	k0s.io v0.1.5
	k0s.io/pkg/agent v0.1.5
	k0s.io/pkg/asciitransport v0.1.5
	k0s.io/pkg/console v0.1.5
	k0s.io/pkg/dial v0.0.0-00010101000000-000000000000
	k0s.io/pkg/fzf v0.1.5
	k0s.io/pkg/hub v0.1.5
	k0s.io/pkg/uuid v0.1.5
)

require (
	github.com/abiosoft/readline v0.0.0-20180607040430-155bce2042db // indirect
	github.com/chzyer/test v1.0.0 // indirect
	github.com/denisbrodbeck/machineid v1.0.1 // indirect
	github.com/docker/docker v20.10.17+incompatible // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/flynn-archive/go-shlex v0.0.0-20150515145356-3f9db97f8568 // indirect
	github.com/gdamore/encoding v1.0.0 // indirect
	github.com/gdamore/tcell v1.4.0 // indirect
	github.com/ghodss/yaml v1.0.1-0.20190212211648-25d852aebe32 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.15.15 // indirect
	github.com/lucasb-eyer/go-colorful v1.0.3 // indirect
	github.com/mattn/go-colorable v0.1.9 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mattn/go-runewidth v0.0.13 // indirect
	github.com/mattn/go-shellwords v1.0.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/rivo/uniseg v0.2.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	gitlab.com/mjwhitta/errors v1.0.0 // indirect
	gitlab.com/mjwhitta/hilighter v1.11.0 // indirect
	gitlab.com/mjwhitta/pathname v1.2.0 // indirect
	gitlab.com/mjwhitta/safety v1.11.0 // indirect
	gitlab.com/mjwhitta/sysinfo v1.4.7 // indirect
	gitlab.com/mjwhitta/where v1.2.4 // indirect
	golang.org/x/sync v0.2.0 // indirect
	golang.org/x/sys v0.8.0 // indirect
	golang.org/x/term v0.4.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	k0s.io/pkg/distro v0.1.5 // indirect
	k0s.io/pkg/rng v0.1.5 // indirect
	k0s.io/pkg/wrap v0.1.5 // indirect
	nhooyr.io/websocket v1.8.7 // indirect
)

replace k0s.io => ../../

replace k0s.io/cmd => ../../cmd/

replace k0s.io/pkg/agent => ../agent/

replace k0s.io/pkg/asciitransport => ../asciitransport/

replace k0s.io/pkg/cli => ../cli/

replace k0s.io/pkg/client => ./

replace k0s.io/pkg/console => ../console/

replace k0s.io/pkg/distro => ../distro/

replace k0s.io/pkg/dohserver => ../dohserver/

replace k0s.io/pkg/exporter => ../exporter/

replace k0s.io/pkg/fonts => ../fonts/

replace k0s.io/pkg/fzf => ../fzf/

replace k0s.io/pkg/gitd => ../gitd/

replace k0s.io/pkg/hub => ../hub/

replace k0s.io/pkg/jsondns => ../jsondns/

replace k0s.io/pkg/manager => ../manager/

replace k0s.io/pkg/middleware => ../middleware/

replace k0s.io/pkg/plugin => ../plugin/

replace k0s.io/pkg/reverseproxy => ../reverseproxy/

replace k0s.io/pkg/rng => ../rng/

replace k0s.io/pkg/simple => ../simple/

replace k0s.io/pkg/tunnel => ../tunnel/

replace k0s.io/pkg/ui => ../ui/

replace k0s.io/pkg/utils => ../utils/

replace k0s.io/pkg/uuid => ../uuid/

replace k0s.io/pkg/wrap => ../wrap/

replace k0s.io/third_party => ../../third_party/

replace k0s.io/pkg/dial => ../dial/
