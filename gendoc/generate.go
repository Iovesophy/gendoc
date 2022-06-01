package gendoc

import (
	_ "golang.org/x/tools/cmd/godoc"
)

//go:generate go run golang.org/x/tools/cmd/godoc -http=:6060
