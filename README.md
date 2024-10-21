## Run Container

```
docker run -it --network="host" crewai-app
```

## Build Image
```
docker build -t crewai-app .
```

## MultiCrew Docker Compose
```
docker-compose up --force-recreate --remove-orphans
```