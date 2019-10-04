FROM debian:buster
EXPOSE 8080
RUN apt update
RUN apt install -y netcat
RUN apt install -y yes
COPY infiniteHi.sh /usr/bin/server
RUN chmod 0755 /usr/bin/server
CMD ["/usr/bin/server"]
ENTRYPOINT [ "/usr/bin/server" ]
