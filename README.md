======================================================================

**DEPRECATION NOTICE**

This repository has been deprecated and its code has been merged into the [Skywire](https://github.com/skycoin/skywire) repository.

All future development and maintenance will continue within the [Skywire](https://github.com/skycoin/skywire) repository.

This repository will be archived and no longer receive updates.

======================================================================

# Skycoin Service Discovery

The Skycoin service discovery allows registering services to be discovered by other participants in the Skywire network. Currently it allows registration 
and discovery of 

- VPNs
- Socks proxies
- public visors

## Dependencies

`service-discovery` is written in `golang` and uses `redis` and `postgres` as databases (both required).

- [Golang](https://golang.org/) (version 1.19 or higher is required).
- [Redis](https://redis.io/) (only version 5.0.8 is tested with `service-discovery`).

## Run tests

You can run integration tests of the service discovery with the following command:

```
make test
```

This requires docker to be installed on the system and runnable from the user invoking the command.

## Run

Ensure `redis-server` is running. If it is installed locally, one can just run:

```bash
redis-server
```

Alternatively, you can run redis in a docker container:

```
docker run -d -p 6379:6379 --name redis redis
```

Ensure `postgresql` is running with `postgres` as username, password and database. You can run it by docker as follow:
```bash
docker run --name postgres -e POSTGRES_USERNAME=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DATABASE=postgres -p 5432:5432 -d postgres
```

Assuming redis is bound to `redis://localhost:6379`, we can run `service-discovery` to serve on `:8000` with:

```bash
PG_USER=postgres PG_PASSWORD=postgres PG_DATABASE=postgres go run ./cmd/service-discovery/service-discovery.go --redis="redis://localhost:6379" --addr=":8000"
```

### Running in test mode

The proxy service registration and de-registration endpoints require us to use specialised html header fields for authentication/authorization. When testing, this can be a pain. To disable auth completely, run `proxy-server` with the `--test` flag:

```bash 
go run ./cmd/service-discovery/service-discovery.go --test
```

### Running with metrics on
To expose a Victoria Metrics endpoint for `skycoin-service-discovery` un it with the `-m` or `--metrics` flag.
```bash
PG_USER=postgres PG_PASSWORD=postgres PG_DATABASE=postgres go run ./cmd/service-discovery/service-discovery.go -m localhost:9099
```

## Build Docker Image
To build docker image use
```bash
$ docker build -f Dockerfile -t skycoin/service-discovery:test .
```

### Help

This prints the help menu and exits.
```bash
go run ./cmd/service-discovery/service-discovery.go --help
```

## HTTP API

### Data structures

All HTTP request and response bodies uses the JSON data format.

Here is the JSON representation of a proxy service entry:

```json5
{
  // 'addr' is the skywire address of the proxy service.
  // The format is <public-key>:<uint16-port>
  "addr": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:1234",

  // 'geo' contains the geolocation of the proxy service.
  // It will be omitted if empty.
  "geo": {
    "lat": 37.4224764, // latitude
    "lon": -122.0842499, // longitude
    "country": "NZ", // 2 letter country code (ISO 3166-1 alpha-2) (omitted if empty)
    "region": "" // Region/state short code (FIPS or ISO) (omitted if empty)
  }
}
```

### `GET /api/services`

Obtains a JSON array of all proxy service entries.

**Example:**

Request: `GET /api/services`

Response body:
```json
[
  {
    "address": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6001",
    "geo": {
      "lat": 37.4224764,
      "lon": -122.0842499
    }    
  },
  {
    "address": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6002"
  },
  {
    "address": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6003"
  }
]
```

### `GET /api/services/{skywire-address}`

Obtains a single proxy service entry.<br>
`{skywire-address}` is of format: `<public-key>:<uint16-port>`

**Example:**

Request: `GET /api/services/02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6001`

Response body:
```json
{
  "address": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6001",
  "geo": {
    "lat": 37.4224764,
    "lon": -122.0842499
  }    
}
```

### `POST /api/services/{skywire-address}`

Registers/updates a proxy service entry.<br>
`{skywire-address}` is of format: `<public-key>:<uint16-port>`

**Example:**

Request: `POST /api/services/02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6001`

Request body:
```json
{
  "address": "02263cf7f643a6e6e59484e13723e654b8921aa3da3626e7a58bd1d3d08e3b60e9:6001",
  "geo": {
    "lat": 37.4224764,
    "lon": -122.0842499
  }    
}
```

Response body:

The server will return the saved proxy service entry.

If the request has no `"geo"` field, the server may fill the field using the requester's IP address.
