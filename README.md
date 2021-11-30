# OBA-v1
This repository is a modified vesion of https://github.com/open-austin/onebusaway-docker


### Running the OBA Docker

```
docker build -t oba .
docker run -p 8080:8080 -t oba

```
http://IP:8080/api/where/agencies-with-coverage.xml?key=TEST
City specific data:

- gtfs.zip
- bundle/
- Dockerfile
    - gtfsRealtimeAlertsUrl
    - gtfsRealtimeTripUpdatesUrl
    - gtfsRealtimeVehiclePositionsUrl

### The server is running using Digital Ocean

https://www.digitalocean.com/

the platform offers tutorials how to set up the server including Docker, HTTPS using Apache, scalability