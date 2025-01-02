# Caddy-docker

This is a personal docker image for [Caddy](https://caddyserver.com/), with some plugins pre-installed.

## Usage

```bash
docker pull ghcr.io/EtaoinWu/caddy-docker:latest
```

## Plugins

- [caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy): Automatic configuration with Docker labels.
- [caddy-cloudflare-ip](https://github.com/WeidiDeng/caddy-cloudflare-ip): Get real IP from Cloudflare.
- [caddy-vault-storage](https://github.com/gerolf-vent/caddy-vault-storage): Store certificates in HashiCorp Vault.
- [caddy-tailscale](https://github.com/tailscale/caddy-tailscale): Interplay with Tailscale and `tsnet`.

