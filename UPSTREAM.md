# Upstream

| | |
| --- | --- |
| Project | DVWS-node (Damn Vulnerable Web Services) |
| Repository | https://github.com/snoopysecurity/dvws-node |
| Version | master (no release tags) |
| Commit | eb6e2886f2206b88bf709fe1fa311adc3ae3c34f |
| Licence | GPL-3.0 |

`build/web/app/` is that commit, unchanged, without its Git history. `build/web/Dockerfile` is
upstream's Dockerfile with one change: the database hosts (`SQL_LOCAL_CONN_URL`,
`MONGO_LOCAL_CONN_URL`), which upstream's docker-compose.yml sets, are baked in as `ENV`.
`build/mysql/Dockerfile` is upstream's MySQL service (`mysql:8`, pinned to 8.4) with its
environment baked in; MongoDB is the stock `mongo:4.0.4` image, as upstream. Dependencies install
from upstream's package-lock.json files. To update, replace `build/web/app/` with a newer commit,
then change this table.
