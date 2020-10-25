package agent

import (
	"net"

	"github.com/ginuerzh/gost"
	types "k0s.io/k0s/pkg/agent"
)

func StartSocks5Server(c types.Config) chan net.Conn {
	socks5Listener := NewLys()
	go autoServe(socks5Listener)
	return socks5Listener.Conns
}

var autoHandler = gost.AutoHandler()

func autoServe(l net.Listener) {
	for {
		c, err := l.Accept()
		if err != nil {
			continue
		}

		go func() {
			defer c.Close()
			autoHandler.Handle(c)
		}()
	}
}