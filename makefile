.PHONY: remote-a remote-b host
up: 
	make -j 3 remote-a remote-b host

remote-a:
	npm run build --prefix remote-a
	npm run preview --prefix remote-a

remote-b:
	npm run build --prefix remote-b
	npm run preview --prefix remote-b

host:
	npm run dev --prefix host