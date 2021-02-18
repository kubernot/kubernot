module k0s.io/k0s

go 1.16

replace (
	github.com/buildkite/agent/v3 => github.com/btwiuse/agent/v3 v3.27.1-0.20210217080418-ae42a28eefa7
	github.com/caddyserver/forwardproxy => github.com/klzgrad/forwardproxy v0.0.0-20210120121422-9b4a5a242bd6
	github.com/ginuerzh/gost => github.com/btwiuse/gost v0.0.0-20210218034515-4e5ef1691e9f
	github.com/greenpau/caddy-auth-portal => github.com/btwiuse/caddy-auth-portal v1.3.12-0.20210204101408-068c2618b417
	k8s.io/kube-state-metrics/v2 => github.com/btwiuse/k16s/v2 v2.0.0-beta.0.20201224174453-2114e07844a9
	nhooyr.io/websocket => github.com/btwiuse/websocket v1.8.6
)

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/MaxRis/w32 v0.0.0-20180517000239-4f5cfb03fabf // indirect
	github.com/VojtechVitek/yaml-cli v0.0.5
	github.com/abbot/go-http-auth v0.4.0
	github.com/abiosoft/ishell v2.0.0+incompatible
	github.com/abiosoft/readline v0.0.0-20180607040430-155bce2042db // indirect
	github.com/alexpantyukhin/go-pattern-match v0.0.0-20200628201436-c57d5ad3f2c5
	github.com/btwiuse/bcrypt v1.0.2
	github.com/btwiuse/gods v0.0.0-20190414062120-7e7cf0aebbb0
	github.com/btwiuse/pretty v0.0.0-20190401073227-519ff4ea1882
	github.com/btwiuse/wetty v0.0.36
	github.com/buildkite/agent/v3 v3.27.0
	github.com/caddyserver/caddy/v2 v2.3.0
	github.com/caddyserver/forwardproxy v0.0.0-00010101000000-000000000000
	github.com/caddyserver/nginx-adapter v0.0.3
	github.com/creack/pty v1.1.11
	github.com/dchest/siphash v1.2.1 // indirect
	github.com/denisbrodbeck/machineid v1.0.1
	github.com/docker/docker v1.4.2-0.20200214221943-d8772509d1a2
	github.com/emirpasic/gods v1.12.0 // indirect
	github.com/flynn-archive/go-shlex v0.0.0-20150515145356-3f9db97f8568 // indirect
	github.com/freman/caddy2-reauth v0.0.0-20200518130136-6064aa96b1a8
	github.com/gdamore/tcell v1.3.0
	github.com/ginuerzh/gost v0.0.0-20210206051340-8dd4d8d9a123
	github.com/go-log/log v0.2.0
	github.com/golang/protobuf v1.4.3
	github.com/google/uuid v1.1.2
	github.com/gorilla/handlers v1.5.1
	github.com/gorilla/mux v1.8.0
	github.com/gorilla/websocket v1.4.2
	github.com/greenpau/caddy-auth-jwt v1.2.6
	github.com/greenpau/caddy-auth-portal v0.0.0-00010101000000-000000000000
	github.com/greenpau/caddy-trace v1.1.5
	github.com/iamd3vil/caddy_yaml_adapter v0.0.0-20200503183711-d479c29b475a
	github.com/infobloxopen/go-trees v0.0.0-20200715205103-96a057b8dfb9
	github.com/json-iterator/go v1.1.10
	github.com/liamg/aminal v0.9.0
	github.com/lucasb-eyer/go-colorful v1.0.3 // indirect
	github.com/lukesampson/figlet v0.0.0-20190211215653-8a3ef4a6ac42
	github.com/lunny/tango v0.5.6
	github.com/mattn/go-isatty v0.0.12
	github.com/mattn/go-runewidth v0.0.8
	github.com/mattn/go-shellwords v1.0.10
	github.com/mholt/caddy-webdav v0.0.0-20200916200058-c949b3226234
	github.com/miekg/dns v1.1.35
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.9.0
	github.com/prometheus/common v0.15.0
	github.com/prometheus/node_exporter v1.0.1
	github.com/pupapaik/sysinfo v0.0.0-20200106202926-c17dea004cd4
	github.com/rs/cors v1.7.0
	github.com/stretchr/testify v1.6.1
	github.com/tango-contrib/basicauth v0.0.0-20170526072948-7fbc19aece86
	github.com/urfave/cli v1.22.4
	golang.org/x/crypto v0.0.0-20200728195943-123391ffb6de
	golang.org/x/net v0.0.0-20201209123823-ac852fbbde11
	golang.org/x/sync v0.0.0-20201207232520-09787c993a3a
	golang.org/x/sys v0.0.0-20210104204734-6f8348627aad
	google.golang.org/grpc v1.35.0
	google.golang.org/protobuf v1.25.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c
	k8s.io/autoscaler/vertical-pod-autoscaler v0.0.0-20200727194258-b7922d74509c
	k8s.io/client-go v0.19.3
	k8s.io/klog/v2 v2.2.0
	k8s.io/kube-state-metrics/v2 v2.0.0-beta
	modernc.org/httpfs v1.0.0
	nhooyr.io/websocket v1.8.6
)
