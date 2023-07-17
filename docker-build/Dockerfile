FROM quay.io/remram44/taguette:1.4.1

COPY ./docker-build/default.database.sqlite3 /
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["taguette", "server", "/config.py"]