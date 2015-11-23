# copyleft 2015 teodorescu.serban@gmail.com

api:
  hostname: api
  image: teodorescuserban/pspc-api:latest
  ports:
    - "${API_ADDR}:${API_PORT}:5000"
  volumes:
    - "${BASE_VOL}/files:/srv/bas-api/Inputs"
  env_file:
    - env_common
    - env_db

db:
  hostname: db
  image: teodorescuserban/pspc-mysql:latest
  ports:
    - "${DB_ADDR}:${DB_PORT}:3306"
  volumes:
    - "${BASE_VOL}/db:/srv/db"
  env_file:
    - env_common
    - env_db
    - env_db_private
