### Build
```bash
docker build . -t pgcli
```

### Run and connect to database in local postgres container
```bash
docker run -it --rm --link $postgres_container_name:postgres pgcli postgresql://$user:$password@$host:$port/$db_name
```

### Run and connect to external database
```bash
docker run -it --rm pgcli postgresql://$user:$password@$host:$port/$db_name
```
