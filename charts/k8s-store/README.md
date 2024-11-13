# Project chart

A chart to create a SecretStore for local namespace and kubernetes cluster.

## Parameters

### Configuration

| Name        | Description       | Value                      |
| ----------- | ----------------- | -------------------------- |
| `namespace` | objects namespace | `{{ .Release.Namespace }}` |
| `name`      | objects name      | `{{ .Release.Name }}`      |
