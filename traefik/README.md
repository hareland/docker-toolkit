# traefik docker++

**Clone repo**

```bash
git clone git@github.com:hareland/docker-toolkit.git

cd docker-toolkit/traefik
```

**Getting up and running**

```bash
docker compose up
```

You can now visit [http://traefik.localhost/dashboard/](http://traefik.localhost/dashboard/) to see the Traefik dashboard. ([yes it requires a /dashboard/ prefix](https://doc.traefik.io/traefik/operations/dashboard/))

Configure any routers/services in [./provider.yml](./provider.yml)
