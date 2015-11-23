# pspc-bas-install
docker-compose related files to be able to get and run the pscp-bas dockers.

## Instructions:

1. git clone this repo to a shorter named folder (```git clone https://github.com/teodorescuserban/pspc-bas-install.git bas```)
 
1. cd into the cloned repo folder: ```cd bas```

1. run ```bash prepare.sh```

1. modify parameters (a simple dev env should not need to change anything, maybe just the api and db ports)

1. run ```docker-compose pull``` to get the docker images (this takes a while)

1. run ```docker-compose up -d```

1. assuming you are in a folder named ```pspc-bas-api```, run ```docker exec -it pspcbasapi_api_1 bash /srv/init.sh``` to create the api config, initialize the database, download tenders and contracts and insert them into the database.

1. open your browser and go to http://$API_ADDR:$API_PORT (by default http://127.0.0.1:5000)

1. follow the api instructions [here](https://github.com/PWGSC-DEEN/procurement-data-api)
