# CoolAPI

In order to run this service behind a Nginx Loablanacer run following commands after cloning this repo.

  - $ cd coolAPI/
  - $ docker build -t lb:latest -f nginx-docker . --rm
  - $ docker build -t app:latest -f app-dockerfile . --rm
  - $ docker build -t app1:latest -f app-dockerfile . --rm
  - $ docker build -t app2:latest -f app-dockerfile . --rm

These steps build the docker images from the files present in this directory.
Once you ran all the above steps you should check the docker images as shown below:
  - $ docker images
    - app1                latest              33d1e8dfcfec        6 minutes ago       91.2MB
    - app2                latest              33d1e8dfcfec        6 minutes ago       91.2MB
    - app                 latest              33d1e8dfcfec        6 minutes ago       91.2MB
    - lb                  latest              52fe6c0206a8        23 minutes ago      109MB

Once the images are create you can issue the following command to bring the images up and test the setup with following command:

 - $ docker-compose up
   - O/P
    - Creating app2  ... done
    - Creating app   ... done
    - Creating app1  ... done
    - Creating nginx ... done

### Health endpoint
Once this is done you should be able to execute the script probe.sh which will monitor the health of the api and write a file as following:

- response_code: 200 connect_time: 0.006118
- response_code: 200 connect_time: 0.006118
