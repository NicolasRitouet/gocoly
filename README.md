# Gocoli

This is a PoC API using go to test different setup of infrastructure for a go app.

## Deployment

```bash
docker run --rm -it -v "$GOPATH":/gopath -v "$(pwd)":/app -e "GOPATH=/gopath" -w /app golang:1.9 sh -c 'CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o main'
docker build -t nicolasritouet/gocoli .
docker run --rm -it -p 5000:5000 nicolasritouet/gocoli
```