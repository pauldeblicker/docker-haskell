FROM debian:jessie

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl libpq-dev && \
    curl -sSL https://get.haskellstack.org/ | sh && \
    apt-get purge -y --auto-remove curl

ENV PATH /root/.local/bin:$PATH

CMD /bin/bash
