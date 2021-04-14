# README
 Rails 6
 Austin Cabiru tutorial[part-1](https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one)


# Attempt to access API without a token
$ http :3000/todos
# Signup a new user - get token from here
$ http :3000/signup name=ash email=ash@email.com password=foobar password_confirmation=foobar
# Get new user todos
$ http :3000/todos \
> Authorization:'auth_token'
# create todo for new user
$ http POST :3000/todos title=Beethoven \
> Authorization:'auth_token'
# Get create todos
$ http :3000/todos \
Authorization:'auth_token'

# GET /todos
$ http :3000/todos \
> Authorization:'auth_token'
# POST /todos
$ http POST :3000/todos title=Mozart created_by=1 \
> Authorization:'auth_token'
# PUT /todos/:id
$ http PUT :3000/todos/1 title=Beethoven \
> Authorization:'auth_token'
# DELETE /todos/:id
$ http DELETE :3000/todos/1 \
> Authorization:'auth_token'

# GET /todos/:todo_id/items
$ http :3000/todos/2/items \
> Authorization:'auth_token'
# POST /todos/:todo_id/items
$ http POST :3000/todos/2/items name='Listen to 5th Symphony' done=false \
> Authorization:'auth_token'
# PUT /todos/:todo_id/items/:id
$ http PUT :3000/todos/2/items/1 done=true \
> Authorization:'auth_token'
# DELETE /todos/:todo_id/items/1
$ http DELETE :3000/todos/2/items/1 \
> Authorization:'auth_token'

# get auth token
$ http :3000/auth/login email=foo@bar.com password=foobar
# get todos from API v1
$ http :3000/todos Accept:'application/vnd.todos.v1+json' \
> Authorization:'auth_token'
(`http :3000/todos Accept:'application/vnd.todos.v1+json' \
> Authorization:'auth_token'`)
# attempt to get from API v2
$ http :3000/todos Accept:'application/vnd.todos.v2+json' \
> Authorization:'auth_token'

# get todos from API v1
$ http :3000/todos Accept:'application/vnd.todos.v1+json' Authorization:'eyJ0e...Lw2bYQbK0g' \
> Authorization:'auth_token'
# get todos from API v2
$ http :3000/todos Accept:'application/vnd.todos.v2+json' \
> Authorization:'auth_token'

`Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MTg0MzczMjZ9.6aLnrJ6qdaB5nhP77BRMR94oJYEt_5LuFwh-Ab31RmE'`


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
 - 6.1.1.3

* System dependencies

 - postgresql

* Configuration

* Database creation
`rails db:create`

* Database initialization
`rails db:migrate`

* How to run the test suite
`rspec`

* Deployment instructions

* ...
