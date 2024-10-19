# Project chart

A chart to create namespace, argo-cd project and applications for a project.

## Parameters

### Namespace

| Name                            | Description                             | Value        |
| ------------------------------- | --------------------------------------- | ------------ |
| `namespace.create`              | Specify whether to create the namespace | `true`       |
| `namespace.podSecurity.audit`   | The audit level for pod security        | `restricted` |
| `namespace.podSecurity.warn`    | The warning level for pod security      | `restricted` |
| `namespace.podSecurity.enforce` | The enforcement level for pod security  | `restricted` |

### ArgoCD Project

| Name                                   | Description                                                | Value                          |
| -------------------------------------- | ---------------------------------------------------------- | ------------------------------ |
| `argocdNamespace`                      | The namespace where ArgoCD is installed                    | `kube-argo-cd`                 |
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
| `dependencies`                         | Array of project dependencies                              | `[]`                           |
