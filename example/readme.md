docker build -f ./build/docker.metrics -t test-metrics:0.1.0 .
docker run --name test-metrics -itd test-metrics:0.1.0
