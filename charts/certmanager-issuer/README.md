# Project chart

A chart to create a certmanager issuer.

## Parameters

### Configuration

| Name   | Description | Value                 |
| ------ | ----------- | --------------------- |
| `name` | issuer name | `{{ .Release.Name }}` |

### CA issuer

| Name             | Description              | Value      |
| ---------------- | ------------------------ | ---------- |
| `ca.duration`    | certificate duration     | `10 years` |
| `ca.renewBefore` | certificate renew before | `15 days`  |
