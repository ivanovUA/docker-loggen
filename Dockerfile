#!/bin/sh
FROM alpine:latest
WORKDIR /log
COPY log_gen.sh /log/
CMD ["/bin/sh", "/log/log_gen.sh"]
