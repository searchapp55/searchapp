# README

## Dependencies
Install docker

## Instructions
Start docker-compose
```bash
docker-compose build
```

Setup the DB with seeds
```bash
docker-compose run web rails db:setup
```

Start services
```bash
docker-compose up
```

Destroy services
```bash
docker-compose down
```

Rebuild
```bash
docker-compose down && docker-compose up --build
```

## Assumptions
Search queries must fully match values in the database.

Tags and domain name arrays are represented using Postgres arrays and have different behavior. It's possible to search for an entire tag or multiple tags seperated by commas.

