FROM golang:1.13

COPY LICENSE README.md /
COPY src/ /
COPY src/hrrender.sh /usr/local/bin/hrrender.sh
COPY src/hrrender-all.sh /usr/local/bin/hrrender
RUN /install.sh

ENTRYPOINT ["/entrypoint.sh"]
