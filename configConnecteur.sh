
curl --request POST \
	--url http://localhost:8083/connectors \
	--header 'Content-Type: application/json' \
	--data ' {
	    "name": "mysql-db-connector",
	    "config": {
		"connector.class": "io.debezium.connector.mysql.MySqlConnector",
		"tasks.max": "1",
		"database.hostname": "mysql",
		"database.port": "3306",
		"database.user": "redpanda",
		"database.password": "redpanda",
		"database.server.id": "1",
		"database.server.name": "mysql",
		"database.allowPublicKeyRetrieval":"true",
		"database.include.list": "redpanda",
		"table.whitelist": "redpanda.payment_method",
		"database.history.kafka.bootstrap.servers":
		"redpanda:9092",
		"database.history.kafka.topic": "dbhistory.mysql",
		"include.schema.changes": "true"
	    } 
        }'

