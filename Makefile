postgres:
	docker run --name goPostgres -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres

createdb:
	 docker exec -it goPostgres createdb --username postgres --owner postgres simple_bank

dropdb:
	docker exec -it goPostgres dropdb -U postgres simple_bank

migrateup:
	migrate -path db/migration -database  "postgresql://postgres:password@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database  "postgresql://postgres:password@localhost:5432/simple_bank?sslmode=disable" -verbose down