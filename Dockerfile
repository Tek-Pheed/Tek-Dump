FROM fedora:latest
LABEL maintainer="Alexandre RICARD <alexandre.ricard@epitech.eu>"
RUN dnf -y install zsh
RUN dnf -y install git
RUN dnf -y install make
RUN dnf -y install gcc
RUN dnf -y install gcc-c++
RUN dnf -y install SFML-devel
RUN dnf -y install raylib-devel
RUN dnf -y install libasan
RUN dnf -y install libuuid-devel
RUN dnf -y install java-21-openjdk 
RUN cd /tmp && curl -sSL "https://github.com/Snaipe/Criterion/releases/download/v2.4.2/criterion-2.4.2-linux-x86_64.tar.xz" -o /tmp/criterion.tar.xz && tar xf criterion.tar.xz && cp -r /tmp/criterion-2.4.2/* /usr/local/ && echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf && ldconfig
RUN cd /tmp && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN cd /tmp && rm -rf /tmp/* && chmod 1777 /tmp
COPY .zshrc /root
WORKDIR /test
