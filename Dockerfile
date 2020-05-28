#Samba share for Raspberry Pi
FROM arm32v7/debian:buster-slim
LABEL io.balena.architecture="armv7hf"

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update
RUN apt-get install -y --no-install-recommends samba-common-bin samba

ADD run.sh /run.sh
RUN chmod u+x /run.sh

EXPOSE 445

ENTRYPOINT ["/run.sh"]
CMD ["-h"]
