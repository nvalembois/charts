{{- define "name" -}}
{{- default .Release.Name .Values.name | lower | replace "." "-" | replace "_" "-" | trunc 60 | trimSuffix "-" -}}
{{- end -}}

