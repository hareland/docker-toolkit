# traefik docker++

**Clone repo**

```bash
git clone git@github.com:hareland/docker-toolkit.git

cd docker-toolkit/traefik
```

**Usage**

```bash
docker compose up
```

**Routers in use**

Visit [http://traefik.localhost/dashboard/](http://traefik.localhost/dashboard/) to see the Traefik
dashboard. ([yes it requires a /dashboard/ prefix](https://doc.traefik.io/traefik/operations/dashboard/))

You can also visit [http://app.localhost](http://app.localhost), which forwards to `http://host.docker.internal:3000`
aka your `localhost:3000`

| File                             | Desc                                                       |
|----------------------------------|------------------------------------------------------------|
| [./traefik.yml](./traefik.yml)   | Traefik config...                                          |
| [./provider.yml](./provider.yml) | File provider, defines traefik dashboard and app.localhost |

