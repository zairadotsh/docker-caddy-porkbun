[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/zairadotsh/caddy-porkbun?label=Docker%20Hub)](https://hub.docker.com/r/zairadotsh/caddy-porkbun) [![Container Builds](https://github.com/zairadotsh/docker-caddy-porkbun/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/zairadotsh/docker-caddy-porkbun/actions/workflows/docker-publish.yml) 

# zairadotsh/caddy-porkbun

This is a custom [Caddy](https://hub.docker.com/_/caddy)-based image that adds the following features with the [porkbun](https://github.com/caddy-dns/porkbun) module added.

Forked from [erri120/docker-caddy-porkbun](https://github.com/erri120/docker-caddy-porkbun) to remove the added `curl` and `tzdata` packages. Thanks for erri120 for providing a base.

## Usage

The image is availabe on [Docker Hub](https://hub.docker.com/r/zairadotsh/caddy-porkbun). You can use the `latest` tag or a minor or patch version of Caddy:

- `zairadotsh/caddy-porkbun:latest`
- `zairadotsh/caddy-porkbun:2.9`
- `zairadotsh/caddy-porkbun:2.9.1`

The following platforms are supported:

- `linux/amd64` (normal x64)
- `linux/arm64` (64-bit ARM, eg: Raspberry Pi 3/4)
- `linux/arm/v7` (32-bit ARM hard-float, eg: Raspberry Pi 2)

Don't forget to [update your config](https://github.com/caddy-dns/porkbun#config-examples) after pulling the image.

## License

See [LICENSE](./LICENSE) for more information.
