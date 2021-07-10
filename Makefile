DEFAULT: build

build:
	deno run --unstable --allow-all build.ts

serve: build
	deno run --allow-net --allow-read https://deno.land/std@0.100.0/http/file_server.ts

PHONY: build serve
