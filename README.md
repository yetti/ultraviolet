# Ultraviolet

General purpose collection management and search interface.

## Setup

1. Clone project from GitHub
2. Open project in VSCode
3. Load the project in a devcontainer
4. Run `bin/setup` to install dependencies

## Running the app

1. `bin/dev`

## Tests and CI

1. `bin/ci` contains all the test and checks for the app
2. `tmp/test.log` will use the production logging format *not* the development one

## Deployment

* All runtime configuration should be supplied in the UNIX environment
* Rails logging uses lograge. Set the `"LOGRAGE_IN_DEVELOPMENT" == "true"` environment variable to use this log format locally.
