# Home Assistant Add-on: WireGuard UI

A basic, self-contained management service for WireGuard with a self-serve web UI.

## Features

* Self-serve and web based
* QR-Code for convenient mobile client configuration
* Optional multi-user support behind an authenticating proxy
* Zero external dependencies - just a single binary using the wireguard kernel module
* Binary and container deployment

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other add-on.

* Add my [Home Assistant add-ons repository](https://github.com/theseal/addons-homeassistant) to your home assistant instance.
* Install the add-on.
* Edit the configuration (see below)
* Click the Save button to store your configuration.
* Start the add-on.
* Open the webUI and adapt the software options

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

A little more extensive example add-on configuration:

```yaml
endpoint: myautomatedhome.duckdns.org
dns: 1.1.1.1
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `endpoint`

This configuration option is the hostname that your clients will use to connect
to your WireGuard add-on. The `host` is mainly used to generate client
configurations and SHOULD NOT contain a port. If you want to change the port,
use the "Network" section of the add-on configuration.

Example: `myautomatedhome.duckdns.org`, for local testing `hassio.local`
will actually work.

DO NOT attempt to use a URL such as a Nabu Casa endpoint, the entry needs to be
either a DNS entry or IP address that is accessible by the clients.

### Option: `server.dns` _(optional)_

A DNS server used by the add-on and the configuration generated for
the clients. This configuration option is optional but highly recommended

## Network configuration/ports

### Port: `51820/udp`
Port of the endpoint which the clients will connect through (the port you need to forward in your router)