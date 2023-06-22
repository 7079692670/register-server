mvn clean
echo "Clean Completed"
mvn install -DskipTests
echo "Build Completed"
sudo docker build -t registry-service .
sudo docker tag registry-service sujityadav/registry-service
docker push sujityadav/registry-service
echo "Push Completed"
sudo docker-compose up -d
echo "APPLICATION STARDER!"