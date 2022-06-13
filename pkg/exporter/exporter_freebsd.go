//go:build freebsd
// +build freebsd

package exporter

import (
	"io"
	"net/http"
)

func NewHandler() http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		io.WriteString(w, "# /metrics is not implemented for freebsd platform")
	})
}
