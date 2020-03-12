docker build --tag vaib79/$1:$2 .
docker login
docker push vaib79/$1:$2