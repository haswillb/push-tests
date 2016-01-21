# push-tests
## To Run

+ docker must be [installed](https://docs.docker.com/engine/installation/mac/)
+ docker-compose build bench-java
+ (leave running) docker-compose up server
+ (in new tab)    docker-compose up bench-java


## Results

All of these tests were run with the Java client on a TUNE Macbook Pro with one Aerospike instance

| test | time (s) | average throughput (tps) |
|------|----------|--------------------------|
| 100% write 10,000 keys 100,000 transactions | 17 | 5,800 |
| 100% write 10,000 keys 100,000 transactions 100 threads | 18 | 5,500 |
| 50% read 50% update 10,000 keys 100,000 transactions | 19 | 5,200 |
| 50% read 50% update 1,000,000 keys 1,000,000 transactions | 170 | 6,000 |
| 50% read update 50% 20,000,000 keys 2,000,000 transactions | 150 | 13,000 |
