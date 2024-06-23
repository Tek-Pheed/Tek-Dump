FROM fedora:latest
LABEL maintainer="Alexandre RICARD <alexandre.ricard@epitech.eu>"
RUN sudo dnf -y install SFML-devel
RUN sudo dnf -y install raylib-devel
RUN sudo dnf -y install libasan
RUN sudo dnf -y install make
RUN sudo dnf -y install gcc
RUN sudo dnf -y install gcc-c++
RUN sudo dnf -y install libuuid-devel
RUN cd /tmp && curl -sSL "https://github.com/Snaipe/Criterion/releases/download/v2.4.2/criterion-2.4.2-linux-x86_64.tar.xz" -o /tmp/criterion.tar.xz && tar xf criterion.tar.xz && cp -r /tmp/criterion-2.4.2/* /usr/local/ && echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf && ldconfig
RUN cd /tmp && rm -rf /tmp/* && chmod 1777 /tmp
WORKDIR /test
