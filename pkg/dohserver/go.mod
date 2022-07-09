module k0s.io/pkg/dohserver

go 1.19

replace (
	k0s.io => ../../
	k0s.io/pkg/jsondns => ../jsondns/
)

require (
	github.com/BurntSushi/toml v1.1.0
	github.com/miekg/dns v1.1.50
	golang.org/x/net v0.0.0-20220708220712-1185a9018129
	k0s.io/pkg/jsondns v0.0.0-00010101000000-000000000000
)

require (
	github.com/infobloxopen/go-trees v0.0.0-20200715205103-96a057b8dfb9 // indirect
	golang.org/x/mod v0.4.2 // indirect
	golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/tools v0.1.6-0.20210726203631-07bc1bf47fb2 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
)
