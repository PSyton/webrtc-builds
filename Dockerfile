FROM ubuntu:bionic

RUN sed --in-place --regexp-extended "s/(\/\/)(archive\.ubuntu)/\1lt.\2/" /etc/apt/sources.list && \
    apt update && apt -y install build-essential make nasm sudo \
    ca-certificates curl krb5-locales libcurl4 libgssapi-krb5-2 libk5crypto3 \
    libkeyutils1 libkrb5-3 libkrb5support0 libnghttp2-14 libpsl5 librtmp1 openssl \
    publicsuffix git git-man less libbsd0 libcurl3-gnutls libedit2 liberror-perl \
    libexpat1 libssl1.0.0 libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 \
    libxmuu1 multiarch-support openssh-client xauth file libmagic-mgc libmagic1 \
    libpython-stdlib libpython2.7-minimal libpython2.7-stdlib mime-support python \
    python-minimal python2.7 python2.7-minimal distro-info-data libmpdec2 \
    libpython3-stdlib libpython3.6-minimal libpython3.6-stdlib lsb-release python3 \
    python3-minimal python3.6 python3.6-minimal lbzip2

WORKDIR /build

CMD ./build.sh -b branch-heads/m75


