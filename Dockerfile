FROM alpine:3.8

RUN apk update
RUN apk add --no-cache git py2-paramiko py2-curl curl py2-pip py2-impacket py-mysqldb freerdp freerdp-libs freerdp-dev py2-psycopg2 py2-crypto py2-asn1 py2-asn1-modules py2-snmp ospd-ikescan unzip nano
RUN pip --no-cache-dir install ajpy pydns ipy
RUN git clone https://github.com/lanjelot/patator.git

WORKDIR /patator

COPY "lists" .

#ENTRYPOINT ["./patator.py"]
