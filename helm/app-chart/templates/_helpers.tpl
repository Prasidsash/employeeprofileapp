{{- define "employeeprofileapp.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "employeeprofileapp.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "employeeprofileapp.labels" -}}
app.kubernetes.io/name: {{ include "employeeprofileapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "employeeprofileapp.selectorLabels" -}}
app.kubernetes.io/name: {{ include "employeeprofileapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}