module github.com/skycoin/skycoin-service-discovery

go 1.21

toolchain go1.21.5

require (
	github.com/go-chi/chi v4.1.2+incompatible
	github.com/go-chi/cors v1.2.1
	github.com/go-redis/redis v6.15.9+incompatible
	github.com/ivanpirog/coloredcobra v1.0.1
	github.com/lib/pq v1.10.9
	github.com/sirupsen/logrus v1.9.3
	github.com/skycoin/dmsg v1.3.22-0.20240622174622-39e439d5679d
	github.com/skycoin/skycoin v0.27.1
	github.com/skycoin/skywire v1.3.16
	github.com/skycoin/skywire-utilities v1.3.18-0.20240624172427-aeaf6f14fbdc
	github.com/spf13/cobra v1.7.0
	github.com/stretchr/testify v1.8.4
	gorm.io/driver/postgres v1.3.8
	gorm.io/gorm v1.23.8
)

require (
	github.com/AudriusButkevicius/pfilter v0.0.11 // indirect
	github.com/VictoriaMetrics/metrics v1.24.0 // indirect
	github.com/ccding/go-stun/stun v0.0.0-20200514191101-4dc67bcdb029 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/fatih/color v1.15.0 // indirect
	github.com/go-chi/chi/v5 v5.0.11 // indirect
	github.com/go-redis/redis/v8 v8.11.5 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/gocarina/gocsv v0.0.0-20230616125104-99d496ca653d // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/google/pprof v0.0.0-20230821062121-407c9e7a662f // indirect
	github.com/google/uuid v1.3.1 // indirect
	github.com/hashicorp/yamux v0.1.1 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgconn v1.12.1 // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.3.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/jackc/pgtype v1.11.0 // indirect
	github.com/jackc/pgx/v4 v4.16.1 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.2.5 // indirect
	github.com/klauspost/reedsolomon v1.11.8 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.19 // indirect
	github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/onsi/ginkgo/v2 v2.12.0 // indirect
	github.com/pires/go-proxyproto v0.6.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/quic-go/qtls-go1-20 v0.3.3 // indirect
	github.com/quic-go/quic-go v0.38.1 // indirect
	github.com/skycoin/noise v0.0.0-20180327030543-2492fe189ae6 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/objx v0.5.1 // indirect
	github.com/templexxx/cpufeat v0.0.0-20180724012125-cef66df7f161 // indirect
	github.com/templexxx/xor v0.0.0-20191217153810-f85b25db303b // indirect
	github.com/tjfoc/gmsm v1.4.1 // indirect
	github.com/valyala/fastrand v1.1.0 // indirect
	github.com/valyala/histogram v1.2.0 // indirect
	github.com/xtaci/kcp-go v5.4.20+incompatible // indirect
	go.etcd.io/bbolt v1.3.7 // indirect
	golang.org/x/crypto v0.12.0 // indirect
	golang.org/x/exp v0.0.0-20230817173708-d852ddb80c63 // indirect
	golang.org/x/mod v0.12.0 // indirect
	golang.org/x/net v0.14.0 // indirect
	golang.org/x/sys v0.11.0 // indirect
	golang.org/x/term v0.11.0 // indirect
	golang.org/x/text v0.12.0 // indirect
	golang.org/x/tools v0.12.1-0.20230815132531-74c255bcf846 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

// Uncomment it for tests with alternative branches and run `make dep`
// replace github.com/skycoin/dmsg => ../dmsg
//replace github.com/skycoin/dmsg => github.com/skycoin/dmsg

// replace github.com/skycoin/skywire => ../skywire

//replace github.com/skycoin/skywire-utilities => ../skywire-utilities
