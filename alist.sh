# 创建配置文件目录
mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "force": false,
  "address": "0.0.0.0",
  "port": $PORT,
  "site_url": "",
  "cdn": "",
  "jwt_secret": "random generated",
  "token_expires_in": 48,
  "database": {
      "type": "$ADATABASE",
      "host": "$DSQLHOST",
      "port": $ESQLPORT,
      "user": "$BSQLUSER",
      "password": "$CSQLPASSWORD",
      "name": "$FSQLNAME",
      "db_file": "data.db",
      "table_prefix": "x_",
      "ssl_mode": ""
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "temp_dir": "data/temp",
  "bleve_dir": "data/bleve",
  "log": {
    "enable": true,
    "name": "data/log/log.log",
    "max_size": 10,
    "max_backups": 5,
    "max_age": 28,
    "compress": false
  },
  "max_connections": 0,
  "tls_insecure_skip_verify": false
  "cache": {
    "expiration": $GEXPIRATION,
    "cleanup_interval": $HCLEANUP_INTERVAL
  }
}
EOF

cd /opt/alist
./alist -conf data/config.json
