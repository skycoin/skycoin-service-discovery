module github.com/skycoin/skycoin-service-discovery

go 1.23

toolchain go1.23.4

require (
	github.com/chen3feng/safecast v0.0.0-20220908170618-81b2ecd47937
	github.com/go-chi/chi v4.1.2+incompatible
	github.com/go-chi/cors v1.2.1
	github.com/go-redis/redis v6.15.9+incompatible
	github.com/ivanpirog/coloredcobra v1.0.1
	github.com/lib/pq v1.10.9
	github.com/sirupsen/logrus v1.9.3
	github.com/skycoin/dmsg v1.3.29-0.20241217193208-d32ec623e670
	github.com/skycoin/skycoin v0.28.1-0.20241105130348-39b49a2d0a7f
	github.com/skycoin/skywire v1.3.29-rc1.0.20241217192205-cb65518c5522
	github.com/spf13/cobra v1.8.1
	github.com/stretchr/testify v1.9.0
	gorm.io/driver/postgres v1.5.9
	gorm.io/gorm v1.25.12
)

require (
	github.com/AudriusButkevicius/pfilter v0.0.11 // indirect
	github.com/VictoriaMetrics/metrics v1.35.1 // indirect
	github.com/ccding/go-stun/stun v0.0.0-20200514191101-4dc67bcdb029 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/fatih/color v1.18.0 // indirect
	github.com/go-chi/chi/v5 v5.1.0 // indirect
	github.com/go-redis/redis/v8 v8.11.5 // indirect
	github.com/go-task/slim-sprig/v3 v3.0.0 // indirect
	github.com/gocarina/gocsv v0.0.0-20240520201108-78e41c74b4b1 // indirect
	github.com/google/pprof v0.0.0-20241017200806-017d972448fc // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/hashicorp/yamux v0.1.2 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/pgx/v5 v5.7.1 // indirect
	github.com/jackc/puddle/v2 v2.2.2 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.2.8 // indirect
	github.com/klauspost/reedsolomon v1.12.4 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/onsi/ginkgo/v2 v2.20.2 // indirect
	github.com/pires/go-proxyproto v0.8.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/quic-go/quic-go v0.48.0 // indirect
	github.com/rogpeppe/go-internal v1.13.1 // indirect
	github.com/skycoin/noise v0.0.0-20180327030543-2492fe189ae6 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	github.com/templexxx/cpufeat v0.0.0-20180724012125-cef66df7f161 // indirect
	github.com/templexxx/xor v0.0.0-20191217153810-f85b25db303b // indirect
	github.com/tjfoc/gmsm v1.4.1 // indirect
	github.com/valyala/fastrand v1.1.0 // indirect
	github.com/valyala/histogram v1.2.0 // indirect
	github.com/xtaci/kcp-go v5.4.20+incompatible // indirect
	go.etcd.io/bbolt v1.3.11 // indirect
	go.uber.org/mock v0.5.0 // indirect
	golang.org/x/crypto v0.28.0 // indirect
	golang.org/x/exp v0.0.0-20241009180824-f66d83c29e7c // indirect
	golang.org/x/mod v0.21.0 // indirect
	golang.org/x/net v0.30.0 // indirect
	golang.org/x/sync v0.8.0 // indirect
	golang.org/x/sys v0.26.0 // indirect
	golang.org/x/term v0.25.0 // indirect
	golang.org/x/text v0.19.0 // indirect
	golang.org/x/tools v0.26.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

// Uncomment it for tests with alternative branches and run `make dep`
//replace github.com/skycoin/dmsg => ../dmsg
//replace github.com/skycoin/skywire => ../skywire

//replace github.com/skycoin/dmsg => github.com/skycoin/dmsg
//replace github.com/skycoin/dmsg => github.com/skycoin/dmsg v1.3.29-0.20241217193208-d32ec623e670

// replace github.com/skycoin/skywire => ../skywire

//replace github.com/skycoin/skywire-utilities => ../skywire-utilities
