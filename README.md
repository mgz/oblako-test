# Running app in Docker
```
git clone git@github.com:mgz/oblako-test.git && cd oblako-test && \
docker build -t oblako-test . && \
docker volume create postgres_data && \
docker run --name oblako-test --rm -p 3118:80 -it -v `pwd`/postgres_data:/var/lib/postgresql \
-e SENDGRID_API_KEY=XXX \
-e SECRET_KEY_BASE=XXX \
oblako-test
```
### Open app in browser:
Navigate to http://localhost:3118