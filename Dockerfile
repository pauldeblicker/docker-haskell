FROM debian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl && \
    curl -sSL https://get.haskellstack.org/ | sh && \
    apt-get purge -y --auto-remove curl

ENV PATH /root/.local/bin:$PATH

WORKDIR /app

CMD /bin/bash
