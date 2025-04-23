# kopia-docker
Base on official kopia image, add more tools to backup db in container.

See https://hub.docker.com/r/fciasth/kopia-docker

If you want to get more details, see [Kopia](https://github.com/kopia/kopia)

# Usage
Refer to https://kopia.io/docs/installation/#docker-images

Replace `kopia/kopia:latest` with `fciasth/kopia-docker:latest`.

Then, you can write your own backup scripts for Mysql and postgresql.

# Add tools
- [x] Mysql Client
- [x] Postgresql Client

# ***Important***

This image is only sync to `latest`, please notice that.
