# DVWS-node

[DVWS-node](https://github.com/snoopysecurity/dvws-node) (Damn Vulnerable Web Services) by
snoopysecurity and contributors: a vulnerable application with REST, SOAP, XML-RPC and GraphQL
interfaces for learning API and web service attacks. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and the
upstream source in [`build/web/app/`](build/web/app) builds with its own Dockerfile.

| Machine | Service |
| --- | --- |
| web | DVWS on port 80 (REST `/api`, SOAP `/dvwsuserservice`, XML-RPC `/xmlrpc`, GraphQL `/graphql`, docs `/api-docs`) |
| mongo | MongoDB 4.0.4 on port 27017 |
| mysql | MySQL 8.4 on port 3306 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost/ and log in as `test` / `test` (or `admin` / `letmein`). The same spec
runs as Docker on a local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab
guide: [CHALLENGES.md](build/web/app/CHALLENGES.md).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

GPL-3.0, as DVWS-node ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it
isolated.
