Stress test of the simple web app that do some insers into MongoDB.
- run `docker-compose up`
- run `siege -f ./urls.txt -c100` for stress testing with 100 concurrent users
