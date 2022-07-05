# maintenance_tracker_docker
Simple Docker container for running the [Maintenance Tracker](https://github.com/machspec/maintenance_tracker) application.
## Setup
Replace the dummy data in both json files in the config directory.  
Build the container
```
docker build -t maintenance_tracker .
```
## Run
```
docker run --name Maintenance_Tracker -dp 80:80 maintenance_tracker
```
