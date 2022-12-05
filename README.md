## POSTGRES HIGH AVAILABILITY / POSTGRES REPLICATION

##  Command for backup
```
pg_basebackup -h localhost -U replicador -p 5432 -D . -Fp -Xs -P -R
```

## Run with docker
```
docker compose up -d
```