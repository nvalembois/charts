{{- define "common.normalize-name" -}}
{{- . | lower | replace "." "-" | replace "_" "-" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "name" -}}
{{- $name := $.Values.name | default $.Release.Name }}
{{- include "common.normalize-name" $name -}}
{{- end -}}

{{- define "destination" -}}
{{- $ := index . 0 -}}
{{- with index . 1 -}}
  {{- with .namespace }}
namespace: {{ tpl . $ | quote }}
  {{- end -}}
  {{- with .server }}
server: {{ tpl . $ | quote }}
  {{- end -}}
  {{- with .name }}
name: {{ tpl . $ | quote }}
  {{- end -}}
{{- end -}}
{{- end -}}
