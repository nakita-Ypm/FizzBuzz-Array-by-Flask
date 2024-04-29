include .env
br:
	make .env
	docker build -f ./flask/Dockerfile -t flask .
	docker run -v ./flask/:/app/ -p ${FLASK_PORT}:${FLASK_PORT} -d --name flask flask

.env:
	cp ./.env.example ./.env
	cp ./flask/.env.example ./flask/.env

rmenv:
	rm -f .env
	rm -f ./flask/.env
	
enf:
	docker exec -it flask /bin/bash

exe:
	docker exec flask python3 ./src/main.py

clean:
	docker stop flask
	docker container rm -f flask
	docker rmi -f flask
	make rmenv
