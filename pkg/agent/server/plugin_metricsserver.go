package server

import (
	"net"
	"net/http"

	"k0s.io/pkg/agent"
	"k0s.io/pkg/api"
	"k0s.io/pkg/exporter"
	"k0s.io/pkg/middleware"
)

func init() { Tunnels[api.Metrics] = StartMetricsServer }

func StartMetricsServer(c agent.Config) chan net.Conn {
	var (
		metricsListener = NewLys()
		handler         = middleware.LoggingMiddleware(middleware.GzipMiddleware(exporter.NewHandler()))
		metricsServer   = &http.Server{Handler: handler}
	)
	go metricsServer.Serve(metricsListener)
	return metricsListener.Conns
}
