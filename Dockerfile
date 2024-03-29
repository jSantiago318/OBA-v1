# FROM openjdk:7
FROM openjdk:8u292-jdk

ADD ./bundle/ /bundle/
ADD oba.war /oba.war

CMD java  -Xms1024m -Xmx1G -server -jar /oba.war -webapp \
    -gtfsRealtimeAlertsUrl="" \
        -gtfsRealtimeTripUpdatesUrl="http://159.65.236.199:8080/api/v1/key/f78a2e9a/agency/1/command/gtfs-rt/tripUpdates?format=xml" \
    -gtfsRealtimeVehiclePositionsUrl="http://159.65.236.199:8080/api/v1/key/f78a2e9a/agency/1/command/gtfs-rt/vehiclePositions?format=xml" \
    ./bundle/ 
# CMD ["java", "-jar"]