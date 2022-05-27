{{- define "diffgram.settings" }}
  USERDOMAIN: {{ .Values.diffgramSettings.USERDOMAIN }}
  DIFFGRAM_SYSTEM_MODE: {{ .Values.diffgramSettings.DIFFGRAM_SYSTEM_MODE }}
  DIFFGRAM_STATIC_STORAGE_PROVIDER: {{ .Values.diffgramSettings.DIFFGRAM_STATIC_STORAGE_PROVIDER }}
  DIFFGRAM_S3_BUCKET_NAME: {{ .Values.diffgramSettings.DIFFGRAM_S3_BUCKET_NAME }}
  ML__DIFFGRAM_S3_BUCKET_NAME: {{ .Values.diffgramSettings.ML__DIFFGRAM_S3_BUCKET_NAME }}
  GOOGLE_APPLICATION_CREDENTIALS: /etc/gcp/sa_credentials.json # Check the volume in deployment.yaml and service_account_secret.yaml
  CLOUD_STORAGE_BUCKET:  {{ .Values.diffgramSettings.CLOUD_STORAGE_BUCKET }}
  ML__CLOUD_STORAGE_BUCKET:  {{ .Values.diffgramSettings.ML__CLOUD_STORAGE_BUCKET }}
  URL_BASE: {{ .Values.diffgramDomain }}
  WALRUS_SERVICE_URL_BASE: https://{{ .Values.diffgramDomain }}
  SERVICE_ACCOUNT_FULL_PATH: {{ .Values.diffgramSettings.SERVICE_ACCOUNT_FULL_PATH }}
  DIFFGRAM_AZURE_CONTAINER_NAME: {{ .Values.diffgramSettings.DIFFGRAM_AZURE_CONTAINER_NAME }}
  ML__DIFFGRAM_AZURE_CONTAINER_NAME: {{ .Values.diffgramSettings.ML__DIFFGRAM_AZURE_CONTAINER_NAME }}
  DIFFGRAM_INSTALL_FINGERPRINT: {{ .Values.diffgramSettings.DIFFGRAM_INSTALL_FINGERPRINT }}
  DIFFGRAM_VERSION_TAG: {{ .Values.diffgramVersion }}
  DIFFGRAM_HOST_OS: {{ .Values.diffgramSettings.DIFFGRAM_HOST_OS }}
  DATABASE_CONNECTION_POOL_SIZE: {{ .Values.diffgramSettings.DATABASE_CONNECTION_POOL_SIZE }}
  PYTHONPATH: "/app:/app/shared:/"
  PROCESS_MEDIA_NUM_VIDEO_THREADS: {{ .Values.diffgramSettings.PROCESS_MEDIA_NUM_VIDEO_THREADS }}
  PROCESS_MEDIA_NUM_FRAME_THREADS: {{ .Values.diffgramSettings.PROCESS_MEDIA_NUM_FRAME_THREADS }}
  NEW_RELIC_LICENSE_KEY: {{ .Values.diffgramSettings.NEW_RELIC_LICENSE_KEY }}
  EMAIL_DOMAIN_NAME: {{ .Values.diffgramSettings.EMAIL_DOMAIN_NAME }}
  ALLOW_EVENTHUB: {{ .Values.diffgramSettings.ALLOW_EVENTHUB }}
  EMAIL_VALIDATION: {{ .Values.diffgramSettings.EMAIL_VALIDATION }}
  ALLOW_STRIPE_BILLING: {{ .Values.diffgramSettings.ALLOW_STRIPE_BILLING }}
  IS_OPEN_SOURCE: {{ .Values.diffgramSettings.IS_OPEN_SOURCE }}
  DIFFGRAM_MINIO_ENDPOINT_URL: {{.Values.diffgramSettings.DIFFGRAM_MINIO_ENDPOINT_URL}}
  DIFFGRAM_MINIO_ACCESS_KEY_ID: {{.Values.diffgramSettings.DIFFGRAM_MINIO_ACCESS_KEY_ID}}
  DIFFGRAM_MINIO_ACCESS_KEY_SECRET: {{.Values.diffgramSettings.DIFFGRAM_MINIO_ACCESS_KEY_SECRET}}
  DIFFGRAM_MINIO_DISABLED_SSL_VERIFY: {{.Values.diffgramSettings.DIFFGRAM_MINIO_DISABLED_SSL_VERIFY}}
  RABBITMQ_HOST: {{.Values.diffgramSettings.RABBITMQ_HOST}}
  RABBITMQ_PORT: {{.Values.diffgramSettings.RABBITMQ_PORT}}
  RABBITMQ_DEFAULT_USER: {{.Values.rabbitmq.auth.username}}
{{- end }}