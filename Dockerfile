# Start by setting the CADDY_VERSION build argument
ARG CADDY_VERSION=2

# First stage: build Caddy with additional plugins
FROM caddy:${CADDY_VERSION}-builder AS builder

ENV GOTOOLCHAIN=

# Use xcaddy to build Caddy binary with the Docker proxy plugin and any additional plugins you'd like
RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2 \
    --with github.com/WeidiDeng/caddy-cloudflare-ip \
    --with github.com/gerolf-vent/caddy-vault-storage \
    --with github.com/tailscale/caddy-tailscale

# Second stage: copy the custom Caddy to the lighter Alpine version
FROM caddy:${CADDY_VERSION}-alpine

# Copy the Caddy binary from the builder stage
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

# Default command to run the caddy docker proxy plugin
CMD ["caddy", "docker-proxy"]
