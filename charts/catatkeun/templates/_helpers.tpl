{{- define "catatkeun.labels" -}}
app.kubernetes.io/name: {{ include "catatkeun.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/component: {{ .component | default "web" }}
app.kubernetes.io/part-of: catatkeun
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "catatkeun.name" -}}
{{- .Values.nameOverride | default .Chart.Name -}}
{{- end -}}

{{- define "catatkeun.fullname" -}}
{{- .Values.fullnameOverride | default (printf "%s-%s" .Release.Name "catatkeun") -}}
{{- end -}}

{{- define "catatkeun.selectorLabels" -}}
app.kubernetes.io/name: {{ include "catatkeun.name" . }}
app.kubernetes.io/component: web
{{- end -}}
