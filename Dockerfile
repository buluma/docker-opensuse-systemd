FROM opensuse/leap

LABEL maintainer="Michael Buluma <bulumaknight@gmail.com>"
LABEL build_date="2022-01-16"

ENV container=docker

RUN zypper install -y dbus-1 systemd-sysvinit && \
    cd /usr/lib/systemd/system/sysinit.target.wants/; \
    for i in *; do [ $i = systemd-tmpfiles-setup.service ] || rm -f $i; done ; \
    rm -f /usr/lib/systemd/system/multi-user.target.wants/* ; \
    rm -f /etc/systemd/system/*.wants/* ; \
    rm -f /usr/lib/systemd/system/local-fs.target.wants/* ; \
    rm -f /usr/lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -f /usr/lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -f /usr/lib/systemd/system/basic.target.wants/* ; \
    rm -f /usr/lib/systemd/system/anaconda.target.wants/*

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
