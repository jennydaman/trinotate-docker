# purpose: build Trinotate using docker and Singularity

base: Dockerfile.trinotate
	docker build -t localhost:5000/trinotate/base -f $< .

withdata: Dockerfile.withdata
	docker build -t localhost:5000/trinotate/withdata -f $< .

trinotate.sif: withdata
	singularity build $@ docker-daemon://localhost:5000/trinotate/withdata:latest

clean:
	$(RM) *.sif
	docker images --filter "reference=localhost:5000/trinotate/*" --format '{{ .ID }}' | xargs docker rmi --force
