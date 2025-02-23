{{/*
Genera un nombre completo usando el nombre de la release.
*/}}
{{- define "my-helm-chart2.fullname" -}}
{{- printf "%s-%s" .Release.Name "my-helm-chart2" | trunc 63 | trimSuffix "-" -}}
{{- end -}}