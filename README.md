Dockerでrailsを動かした

## rails new
```
docker-compose run web bundle exec rails new -MCTS --no-rc -d postgresql --skip-active-storage --skip-spring --skip-coffee --skip-turbolinks .
```
