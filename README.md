# pspc-bas-install
docker-compose related files to be able to get and run the pscp-bas dockers.

## Instructions:

1. run ```bash prepare.sh```

2. modify parameters (a simple dev env should not need to change anything, maybe just the api and db ports)

3. run ```docker-compose pull``` to get the docker images (this takes a while)

4. run ```docker-compose up -d```

5. assuming you are in a folder named ```pspc-bas-api```, run ```docker exec -it pspcbasapi_api_1 bash /srv/init.sh```

6. open your browser and go to http://$API_ADDR:$API_PORT (by default http://127.0.0.1:5000)

7. follow the api instructions here: ```https://github.com/PWGSC-DEEN/procurement-data-api```
