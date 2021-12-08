# purpose: build Trinotate using docker and Singularity

trinotate.sif: image
	singularity build $@ docker-daemon://localhost:5000/trinotate/trinotate:latest

image: Dockerfile
	docker build -t localhost:5000/trinotate/trinotate -f $< .

clean:
	$(RM) *.sif
	docker images --filter "reference=localhost:5000/trinotate/*" --format '{{ .ID }}' | xargs docker rmi --force
