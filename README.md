[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/viv32/docker-caddy-porkbun?label=Docker%20Hub)](https://hub.docker.com/r/viv32/docker-caddy-porkbun) [![Docker](https://github.com/viv32/docker-caddy-porkbun/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/viv32/docker-caddy-porkbun/actions/workflows/docker-publish.yml) 

# viv32/docker-caddy-porkbun

This is a custom [Caddy](https://hub.docker.com/_/caddy)-based image that adds the following features with the [porkbun](https://github.com/caddy-dns/porkbun) module added.

Forked from [erri120/docker-caddy-porkbun](https://github.com/erri120/docker-caddy-porkbun) to remove the added `curl` and `tzdata` packages. Thanks for erri120 for doing the heavy lifting here.

## Usage

The image is availabe on [Docker Hub](https://hub.docker.com/r/viv32/docker-caddy-porkbun). You can use the `latest` tag or a specific Caddy version:

- `viv32/docker-caddy-porkbun:latest` (latest from Docker Hub)
- `viv32/docker-caddy-porkbun:2.7.6` (Caddy `2.7.6` from Docker Hub)

The following platforms are supported:

- `linux/amd64` (normal x64)
- `linux/arm64` (64-bit ARM, eg: Raspberry Pi 3/4)
- `linux/arm/v7` (32-bit ARM hard-float, eg: Raspberry Pi 2)

Don't forget to [update your config](https://github.com/caddy-dns/porkbun#config-examples) after pulling the image.

## License

See [LICENSE](./LICENSE) for more information.
