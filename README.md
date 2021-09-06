# Rails Multi Database

Experiment using 2 database on rails. The databases are MSSQL Server & PostgreSQL.

## Use case
Client has legacy apps with data stored in old MSSQL Server database. Client need some additional feature to support his bussiness. But the legacy apps was built with old technology & hard to maintain.

So the solution is rewrite the legacy apps with mature & good community support technology. And gradually migrate data from old MSSQL Server to common good database (PostgreSQL).

## Requirements
Requirements: Docker, Docker Compose, Internet

## How to run
1. Clone repo & `cd` into it
2. Open `Dockerfile.dev`. Modify `_UID_`, `_GID_`, `_USERNAME_`, `_GROUPNAME_`  with your own value from host machine
3. In project root directory run `docker-compose up`
4. Create database & run migrations:
    1. Run `docker-compose exec app bin/rails db:create:primary`
    2. Run `docker-compose exec app bin/rails db:migrate:primary`
    3. Run `docker-compose exec app bin/rails db:create:legacy`
    4. Run `docker-compose exec app bin/rails db:migrate:legacy`
5. For legacy data (MSSQL), open [http://localhost:3000/legacy/todos](http://localhost:3000/legacy/todos) on your browser
6. For primary data (PostgreSQL), open [http://localhost:3000/todos](http://localhost:3000/todos) on your browser