##help			Shows this help
help:
	@cat Makefile | grep "##." | sed '2d;s/##//;s/://'

##up			Starts containers
up:
	docker-compose up -d --build

##down			Stops containers
down:
	docker-compose down

##test-run		Run tests
test-run:
	docker-compose exec ruby rails test

##ssh-ruby		SSH into ruby
ssh-ruby:
	docker-compose exec ruby bash -i

##run			Starts containers
run:
	docker-compose run ruby bash

%:#Dyrty hack for replace original behavior with goals
	@:

