# Project chart

A chart to create namespace, argo-cd project and applications for a project.

## Parameters

### Namespace

| Name                            | Description                             | Value        |
| ------------------------------- | --------------------------------------- | ------------ |
| `namespace.create`              | Specify whether to create the namespace | `false`      |
| `namespace.podSecurity.audit`   | The audit level for pod security        | `restricted` |
| `namespace.podSecurity.warn`    | The warning level for pod security      | `restricted` |
| `namespace.podSecurity.enforce` | The enforcement level for pod security  | `restricted` |

### k8s-store

| Name               | Description                           | Value   |
| ------------------ | ------------------------------------- | ------- |
| `k8s-store.create` | Specify whether to create a k8s-store | `false` |

### ArgoCD Project

| Name                                   | Description                                                | Value                          |
| -------------------------------------- | ---------------------------------------------------------- | ------------------------------ |
| `argocdNamespace`                      | The namespace where ArgoCD is installed                    | `default`                      |
| `description`                          | A description for the project, using Helm template syntax  | `Projet '{{ $.Values.name }}'` |
| `additionalSourceRepos`                | Additional source repositories for the project             | `[]`                           |
| `sourceRepos`                          | Array of source repositories allowed for the project       | `[]`                           |
| `additionnalDestinations`              | Array of additional destinations allowed for the project   | `[]`                           |
| `destinations`                         | Array of destinations allowed for the project              | `[]`                           |
| `additionalClusterResourceWhitelist`   | Additional cluster resources allowed for the project       | `[]`                           |
| `clusterResourceWhitelist`             | Array of cluster resources allowed for the project         | `[]`                           |
| `additionalNamespaceResourceBlacklist` | Additional namespace resources blacklisted for the project | `[]`                           |
| `namespaceResourceBlacklist`           | Array of namespace resources blacklisted for the project   | `[]`                           |
| `additionalNamespaceResourceWhitelist` | Additional namespace resources whitelisted for the project | `[]`                           |
| `namespaceResourceWhitelist`           | Array of namespace resources whitelisted for the project   | `[]`                           |
| `orphanedResources.warn`               | Whether to warn about orphaned resources                   | `false`                        |
| `roles`                                | Array of roles associated with the project                 | `[]`                           |
| `syncWindows`                          | Sync windows for the project                               | `[]`                           |
| `permitOnlyProjectScopedClusters`      | Restrict to project-scoped clusters only                   | `false`                        |
| `sourceNamespaces`                     | Array of source namespaces for the project                 | `[]`                           |

### Applications

| Name           | Description                   | Value |
| -------------- | ----------------------------- | ----- |
| `dependencies` | Array of project applications | `[]`  |

### Applications Defaults

| Name                                                       | Description                                                                                                     | Value  |
| ---------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ------ |
| `applicationDefaults.syncPolicy.automated.selfHeal`        | [Automatic Self-Healing](https://argo-cd.readthedocs.io/en/stable/user-guide/auto_sync/#automatic-self-healing) | `true` |
| `applicationDefaults.syncPolicy.automated.prune`           | [Automatic Pruning](https://argo-cd.readthedocs.io/en/stable/user-guide/auto_sync/#automatic-pruning)           | `true` |
| `applicationDefaults.syncPolicy.retry.backoff.duration`    | Sync retry backoff base duration                                                                                | `5s`   |
| `applicationDefaults.syncPolicy.retry.backoff.factor`      | Factor multiplies the base duration after each failed sync retry                                                | `2`    |
| `applicationDefaults.syncPolicy.retry.backoff.maxDuration` | Max sync retry backoff duration                                                                                 | `3m0s` |
| `applicationDefaults.syncPolicy.retry.limit`               | Max number of allowed sync retries                                                                              | `2`    |
| `applicationDefaults.syncPolicy.syncOptions`               | [Sync Options](https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#sync-options)                  | `[]`   |
