# build
docker build -t zeny:latest .
# exec
docker run --name c_name --env USERPASS=user.worker:pass --env THREAD_NUM=num  zeny
