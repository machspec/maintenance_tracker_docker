FROM debian

WORKDIR /opt/mt
RUN apt update && apt install -y wget xz-utils
RUN wget https://github.com/machspec/maintenance_tracker/releases/download/v1.0.0/Maintenance.Tracker.v1.0-GNU.Linux.x86_64.tar.xz
RUN tar -xf Maintenance.Tracker.v1.0-GNU.Linux.x86_64.tar.xz -C /opt/mt
COPY ./config .
CMD ["setcap CAP_NET_BIND_SERVICE=+eip", "/opt/mt/maintenance_tracker"]
CMD ["/opt/mt/maintenance_tracker"]
EXPOSE 80
