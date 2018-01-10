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
	docker build -t nicolasritouet/gocoli .

docker-run:
	docker run --rm -it -p 5000:5000 nicolasritouet/gocoli

test:
	echo "No test yet :/"