{{- define "app.env" -}}
- name: DATABASE_URL
{{- if eq .Values.db.type "cnpg" }}
  valueFrom:
    secretKeyRef:
      key: uri
      name: "{{ include "app.fullname" . }}-db-app"
{{- end }}
{{- if .Values.app.params.appEnv }}
- name: APP_ENV
  value: {{ .Values.app.params.appEnv | toString -}}
{{- end }}
- name: APP_SECRET
  valueFrom:
    secretKeyRef:
      key: app
      name: {{ include "app.fullname" . | quote }}
{{- if ( or .Values.app.params.proxyUrl .Values.ingress.enabled ) }}
- name: AENERIA_PROXY_URL
{{- if .Values.app.params.proxyUrl }}
  value: {{ .Values.app.params.proxyUrl | toString -}}
{{ else }}
  value: https://{{ .Values.ingress.host }}
{{- end }}
{{- end }}
{{- if .Values.app.params.demoMode }}
- name: AENERIA_DEMO_MODE
  value: {{ .Values.app.params.demoMode | toString -}}
{{- end }}
{{- if .Values.app.params.placeCanBePublic }}
- name: AENERIA_PLACE_CAN_BE_PUBLIC
  value: {{ .Values.app.params.placeCanBePublic | toString -}}
{{- end }}
{{- if .Values.app.params.proxyForEnedis }}
- name: AENERIA_PROXY_FOR_ENEDIS
  value: {{ .Values.app.params.proxyForEnedis | toString -}}
{{- end }}
{{- if .Values.app.params.proxyForGrdf }}
- name: AENERIA_PROXY_FOR_GRDF
  value: {{ .Values.app.params.proxyForGrdf | toString -}}
{{- end }}
{{- if .Values.app.params.userCanExport }}
- name: AENERIA_USER_CAN_EXPORT
  value: {{ .Values.app.params.userCanExport | toString -}}
{{- end }}
{{- if .Values.app.params.userCanFetch }}
- name: AENERIA_USER_CAN_FETCH
  value: {{ .Values.app.params.userCanFetch | toString -}}
{{- end }}
{{- if .Values.app.params.userCanImport }}
- name: AENERIA_USER_CAN_IMPORT
  value: {{ .Values.app.params.userCanImport | toString -}}
{{- end }}
{{- if .Values.app.params.userCanSharePlace }}
- name: AENERIA_USER_CAN_SHARE_PLACE
  value: {{ .Values.app.params.userCanSharePlace | toString -}}
{{- end }}
{{- if .Values.app.params.aeneriaUserMaxPlaces}}
- name: USER_MAX_PLACES
  value: {{ .Values.app.params.aeneriaUserMaxPlaces | toString -}}
{{- end }}
{{- if .Values.app.params.aeneriaWelcomeMessage }}
- name: WELCOME_MESSAGE
  value: {{ .Values.app.params.aeneriaWelcomeMessage | toString -}}
{{- end }}
{{- if .Values.app.params.enedisClientId }}
- name: ENEDIS_CLIENT_ID
  value: {{ .Values.app.params.enedisClientId | toString -}}
{{- end }}
{{- if .Values.app.secret.enedisClientSecret }}
- name: ENEDIS_CLIENT_SECRET
  valueFrom:
    secretKeyRef:
      key: enedisClientSecret
      name: {{ include "app.fullname" . | quote }}
{{- end }}
{{- if .Values.app.params.enedisEndpointAuth }}
- name: ENEDIS_ENDPOINT_AUTH
  value: {{ .Values.app.params.enedisEndpointAuth | toString -}}
{{- end }}
{{- if .Values.app.params.enedisEndpointData }}
- name: ENEDIS_ENDPOINT_DATA
  value: {{ .Values.app.params.enedisEndpointData | toString -}}
{{- end }}
{{- if .Values.app.params.enedisEndpointToken }}
- name: ENEDIS_ENDPOINT_TOKEN
  value: {{ .Values.app.params.enedisEndpointToken | toString -}}
{{- end }}
{{- if .Values.app.params.enedisRedirectUri }}
- name: ENEDIS_REDIRECT_URI
  value: {{ .Values.app.params.enedisRedirectUri | toString -}}
{{- end }}
{{- if .Values.app.params.grdfClientId }}
- name: GRDF_CLIENT_ID
  value: {{ .Values.app.params.grdfClientId | toString -}}
{{- end }}
{{- if .Values.app.secret.grdfClientSecret }}
- name: GRDF_CLIENT_SECRET
  valueFrom:
    secretKeyRef:
      key: grdfClientSecret
      name: {{ include "app.fullname" . | quote }}
{{- end }}
{{- if .Values.app.params.grdfEndpointAuth }}
- name: GRDF_ENDPOINT_AUTH
  value: {{ .Values.app.params.grdfEndpointAuth | toString -}}
{{- end }}
{{- if .Values.app.params.grdfEndpointData }}
- name: GRDF_ENDPOINT_DATA
  value: {{ .Values.app.params.grdfEndpointData | toString -}}
{{- end }}
{{- if .Values.app.params.grdfRedirectUri }}
- name: GRDF_REDIRECT_URI
  value: {{ .Values.app.params.grdfRedirectUri | toString -}}
{{- end }}
{{- end }}
