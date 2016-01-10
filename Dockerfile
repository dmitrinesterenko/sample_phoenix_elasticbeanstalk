FROM dmitrinesterenko/phoenix
EXPOSE 4000
CMD mkdir -p /webapp/current
COPY . /webapp/current
WORKDIR /webapp/current
# This project is using postgres so install the psql client
# that is to be used by Ecto
RUN apt-get update && apt-get install -y \
   postgresql-client
RUN npm install -S
RUN mix deps.get

ENTRYPOINT /webapp/current/scripts/docker/entrypoint.sh
