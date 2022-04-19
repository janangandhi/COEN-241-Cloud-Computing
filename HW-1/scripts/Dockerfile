FROM zyclonite/sysbench

WORKDIR /test

COPY docker-start.sh /test/docker-start.sh
COPY cpu-test.sh /test/cpu-test.sh
COPY file-test.sh /test/file-test.sh

RUN chmod +x cpu-test.sh
RUN chmod +x docker-start.sh
RUN chmod +x file-test.sh

RUN apk update && apk add bash

ENTRYPOINT bash docker-start.sh

