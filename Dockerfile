ARG CADDY_VERSION=2.9.1

# Builder
FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/porkbun

# Container
FROM caddy:${CADDY_VERSION}-alpine

LABEL org.opencontainers.image.vendor="viv32"
LABEL org.opencontainers.image.documentation="https://github.com/viv32/docker-caddy-porkbun"
LABEL org.opencontainers.image.source="https://github.com/viv32/docker-caddy-porkbun"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
