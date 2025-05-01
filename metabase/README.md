# Metabase + postgres docker

**Getting ready**

You need to prepare environment variables.

```bash
cp .env.example .env
```

**Running the project**

```bash
docker compose up -d
```

Visit [http://localhost:8888](http://localhost:8888)

**Resetting database**
Shut down, then delete the postgres volume and start it again.

```bash
docker compose down \
  && docker volume rm metabase_postgres-vol \
  && docker compose up -d
```

> In case there is a container attached, run `docker rm <containerId>` before running the above.