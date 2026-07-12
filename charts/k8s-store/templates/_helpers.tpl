{{- define "namespace" -}}
{{- .Values.namespace | default (.Values.global | default (dict) ).namespace | default .Release.Namespace -}}
{{- end -}}

{{- define "name" -}}
{{- .Values.name | default .Release.Name | lower | replace "." "-" | replace "_" "-" | trunc 60 | trimSuffix "-" -}}
{{- end -}}
