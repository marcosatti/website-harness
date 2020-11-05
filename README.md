# Website Development Harness

Development harness (Docker) for the website project.

Visit https://www.marco.satti.id.au to see it live.

Licence: GPLv3+

## Usage

You will need to create a `github.env` file (see corresponding template file) and populate the variables.
You can also modify the environment variables as required (in `docker-compose.yml`), although the defaults should be ok.

```
git submodule update --init
docker-compose build
docker-compose up
```

## Database Initialization

There is no initialization script in the docker-compose file to populate the database with required tables etc, but you can use the `database/initialize.sh` script to populate the database with a "Hello World!" blog entry (run from within the base directory).
