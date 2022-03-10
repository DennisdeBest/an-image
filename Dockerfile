FROM alpine

RUN apk add --no-cache bash

RUN sed -i -e 's/bin\/ash/bin\/bash/g' /etc/passwd

COPY script /usr/local/bin/script

RUN chmod +x /usr/local/bin/script

CMD script
