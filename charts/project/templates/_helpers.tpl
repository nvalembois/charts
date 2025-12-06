{{- define "common.normalize-name" -}}
{{- . | lower | replace "." "-" | replace "_" "-" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "name" -}}
{{- include "common.normalize-name" ( default .Release.Name .Values.name ) -}}
{{- end -}}

{{- define "destination" -}}
{{- if .dest.namespace | default false }}
namespace: {{ tpl (toYaml .dest.namespace) .root | quote }}
{{- else }}
namespace: {{ include "name" .root | quote }}
{{- end }}
{{- if .dest.server }}
server: {{ tpl (toYaml .dest.server) .root | quote }}
{{- end }}
{{- if .dest.name }}
name: {{ tpl (toYaml .dest.name) .root | quote }}
{{- end }}
{{- end -}}
