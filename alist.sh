# 创建配置文件目录
mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "assets": "$IASSETS",
  "database": {
    "type": "$ADATABASE",
    "user": "$BSQLUSER",
    "password": "$CSQLPASSWORD",
    "host": "$DSQLHOST",
    "port": $ESQLPORT,
    "name": "$FSQLNAME",
    "table_prefix": "x_",
    "db_file": "data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": $GEXPIRATION,
    "cleanup_interval": $HCLEANUP_INTERVAL
  },
  "temp_dir": "data/temp"
}
EOF

cd /opt/alist
./alist -conf data/config.json
