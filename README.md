Project Setup
```
sudo apt install make
make -version
sudo snap install go --classic
go version
sudo snap install sqlc (To generate Golang codes from SQL Queries)
brew install golang-migrate
migrate -version
cd /path/to/project
mkdir -p db/migration
migrate create -ext sql -dir db/migration -seq init_schema
```