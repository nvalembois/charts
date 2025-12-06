{{- define "common.normalize-name" -}}
{{- . | lower | replace "." "-" | replace "_" "-" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "name" -}}
{{- include "common.normalize-name" ( default .Release.Name .Values.name ) -}}
{{- end -}}

{{- define "destination" -}}
{{- if .params.namespace | default false }}
namespace: {{ tpl (toYaml .params.namespace) $ | quote }}
{{- else }}
namespace: {{ include "name" $ | quote }}
{{- end }}
{{- with .params.server }}
server: {{ tpl (toYaml .) $ | quote }}
{{- end }}
{{- with .params.name }}
name: {{ tpl (toYaml .) $ | quote }}
{{- end }}
{{- end -}}
