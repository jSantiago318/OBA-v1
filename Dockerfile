# FROM openjdk:7
FROM openjdk:8u292-jdk
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN java -jar onebusaway-quickstart-assembly-1.1.19-api-webapp.war \
    -webapp \
    -gtfsRealtimeTripUpdatesUrl=http://67.205.134.37:8080/api/v1/key/f78a2e9a/agency/1/command/gtfs-rt/tripUpdates?format=xml \
    -gtfsRealtimeVehiclePositionsUrl=http://67.205.134.37:8080/api/v1/key/f78a2e9a/agency/1/command/gtfs-rt/vehiclePositions?format=xml \
    ./bundle/
# CMD ["java", "-jar"]