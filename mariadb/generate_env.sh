#!/bin/bash

MYSQL_USER=user
MYSQL_DATABASE="randomdb"
MYSQL_PASSWORD=$(openssl rand -base64 12)
MYSQL_ROOT_PASSWORD=$(openssl rand -base64 16)

# Save to an environment file
cat <<EOF > .env
MYSQL_USER=$MYSQL_USER
MYSQL_PASSWORD=$MYSQL_PASSWORD
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_DATABASE=$MYSQL_DATABASE
EOF

echo "Generated credentials:"
echo "Username: $MYSQL_USER"
echo "Password: $MYSQL_PASSWORD"
echo "Root Password: $MYSQL_ROOT_PASSWORD"
echo "Database: $MYSQL_DATABASE"
