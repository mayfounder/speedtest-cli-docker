# speedtest-cli in a container
#
# Run as Server:
# docker run  -it --rm --name=speedtest-cli mayfounder/speedtest-cli
#
#
FROM debian:buster-slim
MAINTAINER Ankit Modi <ankit@mayfounder.net>
# install binary and remove cache
RUN apt-get update \
    && apt-get install -y speedtest-cli \
    && apt-get install -y ca-certificates

# entrypoint allows you to pass your arguments to the container at runtime
# very similar to a binary you would run. For example, in the following
# docker run -it <IMAGE> --help' is like running 'speedtest-cli --help'
ENTRYPOINT ["speedtest-cli"]
