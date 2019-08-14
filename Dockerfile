FROM treeder/bump:1.2.8

COPY LICENSE README.md /

RUN apk  add --no-cache git sed

COPY ./bump /bump
COPY ./suitable /suitable
COPY entrypoint.sh /entrypoint.sh
COPY ./_sed /_sed
COPY ./_sed_with_prefix /_sed_with_prefix

RUN chmod +x /bump
RUN chmod +x /suitable
RUN chmod +x /entrypoint.sh
RUN chmod +x /_sed
RUN chmod +x /_sed_with_prefix


ENTRYPOINT ["/entrypoint.sh"]