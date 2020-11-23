ARG image

FROM $image

RUN \
    # Dragonewell 8 requires a dragonwell 8 BootJDK
    mkdir -p /opt/dragonwell; \
    wget https://github.com/joeyleeeeeee97/dragonwellaarach64base/releases/download/1234/dragonwell8.5.5-aarch64.tar; \
    tar -xf dragonwell8.5.5-aarch64.tar -C /opt/; \
    mv /opt/j2sdk-image /opt/dragonwell8

ENV JDK7_BOOT_DIR="/opt/dragonwell8"