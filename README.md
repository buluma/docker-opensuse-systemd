Docker OpenSUSE Systemd
=======================
[![Build and Push Container](https://github.com/buluma/docker-opensuse-systemd/actions/workflows/build-push-action.yml/badge.svg)](https://github.com/buluma/docker-opensuse-systemd/actions/workflows/build-push-action.yml) ![Docker Pulls](https://img.shields.io/docker/pulls/buluma/docker-opensuse-systemd)

This Dockerfile can build containers capable to use systemd.

Branches
--------

This repository has one branche that relates to OpenSUSE a version.

|Branch |OpenSUSE Version|Docker image tag|
|-------|----------------|----------------|
|master |latest (15.4)   |latest          |

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  buluma/docker-opensuse-systemd
```
