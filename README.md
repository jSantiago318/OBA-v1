# OBA-v1


# onebusaway-docker

:warning: Look at https://github.com/open-austin/onebusaway-script/:warning:
:warning: Look at https://github.com/open-austin/onebusaway-docker :warning:

### Running the OBA Docker

```
docker build -t oba .
docker run -p 8080:8080 -t oba
DOCKER_IP=$(docker-machine ip default)
curl http://$DOCKER_IP:8080/api/where/agencies-with-coverage.json?key=web
```
http://137.184.104.61:8080/api/where/agencies-with-coverage.xml?key=TEST
City specific data:

- gtfs.zip
- bundle/
- Dockerfile
    - gtfsRealtimeAlertsUrl
    - gtfsRealtimeTripUpdatesUrl
    - gtfsRealtimeVehiclePositionsUrl

### Deploying to Azure

https://github.com/Azure/azure-quickstart-templates/tree/9ad72f1f5f0008c14311be79eee036b871712394/docker-simple-on-ubuntu

pbpaste > {"username":"NewUsername", "password":"NewPassword", "ssh_key":"", "reset_ssh":false, "remove_user":""}
azure vm extension set Default MyDockerVM VMAccessForLinux Microsoft.OSTCExtensions "1.2" --private-config-path  PrivateConf.json
