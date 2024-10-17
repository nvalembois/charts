{{- define "common.normalize-name" -}}
{{- . | lower | replace "." "-" | replace "_" "-" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "name" -}}
{{- include "common.normalize-name" ( default .Release.Name .Values.name ) -}}
{{- end -}}

