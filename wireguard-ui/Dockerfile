ARG BUILD_FROM
FROM $BUILD_FROM

FROM "embarkstudios/wireguard-ui:1.3.0" as wg-ui
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
apt-get update \
&& \
apt-get install -y --no-install-recommends \
        nginx \
	    && rm -fr \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/* \
        /etc/nginx \
    \
    && mkdir -p /var/log/nginx \
    && touch /var/log/nginx/error.log

COPY --from=wg-ui /wireguard-ui /wireguard-ui

COPY rootfs /