# image only used in CI, since we were missing the openssl libraries
ARG MATURIN_VERSION
FROM konstin2/maturin:${MATURIN_VERSION}

RUN yum update && yum install -y openssl-devel
