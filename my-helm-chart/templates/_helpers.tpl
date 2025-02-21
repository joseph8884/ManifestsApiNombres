{{/*
Genera un nombre completo usando el nombre de la release.
*/}}
{{- define "my-helm-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name "my-helm-chart" | trunc 63 | trimSuffix "-" -}}
{{- end -}}