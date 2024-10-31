# Project chart

A chart to create a PG Cluster.

## Parameters

### Configuration

| Name        | Description                                                                         | Value      |
| ----------- | ----------------------------------------------------------------------------------- | ---------- |
| `instances` | Number of pg instances to deploy                                                    | `1`        |
| `size`      | Size of DB Filesystem                                                               | `2Gi`      |
| `walsize`   | Size of WAL Filesystem                                                              | `2Gi`      |
| `host`      | PG Cluster hostname (can be overridden by global.postgresql.host)                   | `postgres` |
| `database`  | Database name (can be overridden by global.postgresql.database)                     | `db`       |
| `username`  | User with full access to database (can be overridden by global.postgresql.username) | `db-user`  |
