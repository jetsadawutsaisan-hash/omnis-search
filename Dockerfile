FROM searxng/searxng:latest

COPY settings.yml /etc/searxng/settings.yml

ENV INSTANCE_NAME="OMNIS-COURT Search"
ENV BASE_URL="http://localhost:10000"
ENV SEARXNG_SETTINGS_PATH="/etc/searxng/settings.yml"

EXPOSE 10000

CMD ["uwsgi", "--master", "--http", ":10000", "--module", "searx.webapp", "--processes", "2", "--threads", "4"]
