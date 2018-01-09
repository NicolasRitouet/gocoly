.PHONY : run clean build

##############################################################################
#
#  Makefile to manage a go app lifecycle
#
#         v.1.0.0
#
#    written by Nicolas Ritouet
# 
##############################################################################

default: run

run:
	go run main.go

build: clean
	go build -a -o main main.go

clean:
	rm -rf main

docker-build:
	docker run --rm -it -v "$GOPATH":/gopath -v "$(pwd)":/app -e "GOPATH=/gopath" -w /app golang:1.9 sh -c 'CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o main'
	docker build -t nicolasritouet/gocoli .

docker-run:
	docker run --rm -it -p 5000:5000 nicolasritouet/gocoli

test:
	echo "No test yet :/"