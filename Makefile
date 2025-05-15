# GLOBAL
PROTOC = python -m grpc_tools.protoc
PROTO_SRC_SERVICE_REGISTRY=shared_proto
PROTO_FILE=$(PROTO_SRC_SERVICE_REGISTRY)/service_registry.proto




##############################################################
######################MONGO DB################################
MONGO_COMPOSE_FILE=./docker-compose/mongo.yaml

mongo/up:
	docker compose -f $(MONGO_COMPOSE_FILE) up -d

mongo/down:
	docker compose -f $(MONGO_COMPOSE_FILE) down

mongo/logs:
	docker compose -f $(MONGO_COMPOSE_FILE) logs -f

mongo/restart:
	docker compose -f $(MONGO_COMPOSE_FILE) down
	docker compose -f $(MONGO_COMPOSE_FILE) up -d



##########################
####service registry######
sr/run:
	cd service_registry && cargo run 


