{{- define "host" -}}
{{- default (default (default .Values.global dict).postgresql dict).host .Values.host -}}
{{- end -}}

{{- define "database" -}}
{{- default (default (default .Values.global dict).postgresql dict).database .Values.database -}}
{{- end -}}

{{- define "username" -}}
{{- default (default (default .Values.global dict).postgresql dict).username .Values.username -}}
{{- end -}}

