ARG image

FROM $image

RUN mkdir -p /opt/dragonwell
COPY --from=joeylee97/dragonwell:v1 /opt/dragonwell/j2sdk-image /opt/dragonwell/j2sdk-image
COPY --from=joeylee97/dragonwell:v1 /opt/dragonwell/dragonwell8 /root/jenkins/workspace/build-scripts/jobs/jdk8u/jdk8u-linux-x64-dragonwell/workspace/dragonwell8
COPY --from=joeylee97/dragonwell:v1 /opt/dragonwell/.gradle /root/.gradle
COPY --from=joeylee97/dragonwell:v1 /root/buildfiles /root/buildfiles