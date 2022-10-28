FROM prachandabhanu/build_env:ros2-humble-kuka

RUN /usr/local/bin/scripts/workspace-entrypoint.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]