from ubuntu:latest

ADD ./is-health /bin/is-health
ADD ./health-loop.sh /bin/health-loop.sh

HEALTHCHECK --interval=5s --start-period=1s \
    CMD /bin/is-health

CMD /bin/health-loop.sh
