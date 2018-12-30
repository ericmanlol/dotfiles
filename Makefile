all: build

build:
	docker build -t eman:dev .

run: kill
	docker run -it -h devdev --rm --cap-add=SYS_PTRACE --name devdev eman:dev

kill:
	docker kill devdev || true
