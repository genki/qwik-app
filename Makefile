image:
	docker build -t qwik-app .

run:
	docker run --rm -p 3000:3000 qwik-app
