# speedtest-cli in a container
#
# Run as Server:
# docker run  -it --rm --name=iperf3-srv -p 5201:5201 networkstatic/iperf3 -s
#
# Run as Client (first get server IP address):
# docker inspect --format "{{ .NetworkSettings.IPAddress }}" iperf3-srv
# docker run  -it --rm networkstatic/iperf3 -c <SERVER_IP>
#
FROM debian:buster-slim
MAINTAINER Ankit Modi <ankit@mayfounder.net>
# install binary and remove cache
RUN apt-get update

