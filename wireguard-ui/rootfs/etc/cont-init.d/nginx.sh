#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: wireguard-ui
# Configures NGINX
# ==============================================================================

ingress_interface=$(bashio::addon.ip_address)
sed -i "s/%%interface%%/${ingress_interface}/g" /etc/nginx/servers/ingress.conf
