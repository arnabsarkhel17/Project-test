echo "Building all Dockerfiles"
cd vote
docker build -t arnabsarkhel/vote-app .
docker login -u "arnabsarkhel" -p "password123" docker.io
docker push arnabsarkhel/vote-app
cd ..
cd result
docker build -t arnabsarkhel/result-app .
docker push arnabsarkhel/result-app
cd ..
cd worker
docker build -t arnabsarkhel/worker-app .
docker push arnabsarkhel/worker-app
docker rm -f redis db vote-app result-app worker-app
cd ..
docker logout
