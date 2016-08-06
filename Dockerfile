FROM ubuntu
MAINTAINER <Zhanhao Wong>

ADD ./ngrokd /ngrok/
RUN chmod 777 /ngrok/ngrokd
WORKDIR /ngrok

ENTRYPOINT ["./ngrokd", "-domain=mydomain", "-httpAddr=:p1", "-httpsAddr=:p2", "-tunnelAddr=:p3" ]

EXPOSE p1 p2 p3
