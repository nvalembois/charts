# Changelog

## [1.1.0] - 2026-02-07

### Fixed

- Default destination did not target correct namespace

## [1.0.9] - 2026-02-06

### Added

- GatewayAPI ressources to resourceWhiteList

### Fixed

- Destination without namespace now targets any namespace insteed of current namespace

## [1.0.8] - 2025-12-18

### Added

- templating for application parameters
- parameter for application finalizer switch
- parameter for application projectRepoURL and projectRepoPath
- create function to factorize project destination rendering
- schema improvements
- chart unit tests

### Fixed

- application destination namespace could be wrong

## [1.0.7] - 2025-07-25

### Fixed

- K8s-store 1.0.4

## [1.0.6] - 2024-11-14

### Fixed

- K8s-store 1.0.3

## [1.0.5] - 2024-11-14

### Fixed

- K8s-store 1.0.2

## [1.0.4] - 2024-11-14

### Fixed

- K8s-store 1.0.1

## [1.0.3] - 2024-11-06

### Added

- Variabilisation de la `syncPolicy` des `Applications`

## [1.0.2] - 2024-11-02

### Added

- Ajout de la création d'un `SecretStore` `k8s-store`

## [1.0.1] - 2024-10-31

### Added

- Ajout d'un Changelog

### Fixed

- Correction de l'URL de ce dépôt dans les sources de projet

## [1.0.0] - 2024-10-15

### Added

- Création du chart
