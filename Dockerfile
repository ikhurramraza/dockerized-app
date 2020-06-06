# FROM image

# RUN useradd -Urm --no-log-init deploy

# USER deploy

# COPY --chown=deploy:deploy app home/deploy/app
# COPY --chown=deploy:deploy docker/entrypoint.sh home/deploy/app

# WORKDIR home/deploy/app

# ENTRYPOINT ["./entrypoint.sh"]

# CMD ["sh"]
