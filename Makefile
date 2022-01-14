run:
	go run main.go

docker-build:
	docker build -t docker-demo .

docker-run: docker-build
	docker run -p 3000:3000 docker-demo

.PHONY := run docker-build docker-run