PACKAGE=github.com/genshen/wssocks

all: wssocks-linux-amd64 wssocks-linux-arm64 wssocks-darwin-amd64 wssocks-windows-amd64.exe

wssocks-linux-amd64:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o wssocks-linux-amd64 ${PACKAGE}

wssocks-linux-arm64:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o wssocks-linux-arm64 ${PACKAGE}

wssocks-darwin-amd64:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o wssocks-darwin-amd64 ${PACKAGE}

wssocks-windows-amd64.exe:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o wssocks-windows-amd64.exe ${PACKAGE}

wssocks :
	go build -o wssocks

clean:
	rm -f wssocks-linux-amd64 wssocks-linux-arm64 wssocks-darwin-amd64 wssocks-windows-amd64.exe
