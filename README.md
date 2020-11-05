# Website Development Harness

Development harness (Docker) for the website project.

Licence: GPLv3+

## Usage

git submodule update --init
docker-compose build
docker-compose up

Remember to modify the environment variables as required (in `docker-compose.yml`), although the defaults should be ok.

## Database Initialization

There is no initialization script in the docker-compose file to populate the database with required tables etc, but you can use the `database/initialize.sh` script to populate the database with a "Hello World!" blog entry (run from within the base directory).
