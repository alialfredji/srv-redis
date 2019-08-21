
start:
	humble stop redis
	humble rm -f redis
	humble up -d redis
	humble logs -f redis

stop:
	humble down


	
