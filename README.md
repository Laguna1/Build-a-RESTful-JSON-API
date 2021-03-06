# README
 Rails 6
 Austin Cabiru tutorial[part-1](https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one)

curl --location --request POST http://localhost:3000/auth/login?Authorization="eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2MjAzMTQxMTN9.0AADzTCykc0Iv0ELf1hpmGjKdOE3KmGRCJBR4IZ6KI8"

# Attempt to access API without a token
$ http :3000/todos
# Signup a new user - get token from here
$ http :3000/signup name=ash email=ash@email.com password=foobar password_confirmation=foobar
# Get new user todos
$ http :3000/todos \
> Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2MjAzMTQxMTN9.0AADzTCykc0Iv0ELf1hpmGjKdOE3KmGRCJBR4IZ6KI8'
# create todo for new user
$ http POST :3000/todos title=Beethoven \
> Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2MjAzMTQxMTN9.0AADzTCykc0Iv0ELf1hpmGjKdOE3KmGRCJBR4IZ6KI8'
# Get create todos
$ http :3000/todos \
Authorization:'auth_token'

# GET /todos
$ http :3000/todos \
> Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2MjAzMTQxMTN9.0AADzTCykc0Iv0ELf1hpmGjKdOE3KmGRCJBR4IZ6KI8'
# POST /todos
$ http POST :3000/todos title=Mozart created_by=1 \
> Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2MjAzMTQxMTN9.0AADzTCykc0Iv0ELf1hpmGjKdOE3KmGRCJBR4IZ6KI8'

http :3000/todos/3/items \
> Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MTg0MzczMjZ9.6aLnrJ6qdaB5nhP77BRMR94oJYEt_5LuFwh-Ab31RmE'
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

pagination
# request without page
$ http :3000/todos Accept:'application/vnd.todos.v1+json' \
> Authorization:'auth_token'
# request for page 1
$ http :3000/todos page==1 Accept:'application/vnd.todos.v1+json' \
> Authorization:'auth_token'
# request for page 2
$ http :3000/todos page==2 Accept:'application/vnd.todos.v1+json' \
> Authorization:'auth_token'

`http :3000/todos Accept:'application/vnd.todos.v1+json' \
Authorization: "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2MTg5MzI1MzF9.mkPGGZ2WRNElWH4we71k6GghSJescBTYIXVjE7pDzNw"


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

 ***
        Prefix Verb   URI Pattern                                                                 Controller#Action
        
        todos   GET    /todos(.:format)                                                             v2/todos#index
    todo_items  GET    /todos/:todo_id/items(.:format)                                              v1/items#index
                POST   /todos/:todo_id/items(.:format)                                              v1/items#create
    todo_item   GET    /todos/:todo_id/items/:id(.:format)                                          v1/items#show
                PATCH  /todos/:todo_id/items/:id(.:format)                                          v1/items#update
                PUT    /todos/:todo_id/items/:id(.:format)                                          v1/items#update
                DELETE /todos/:todo_id/items/:id(.:format)                                          v1/items#destroy
                GET    /todos(.:format)                                                             v1/todos#index
                POST   /todos(.:format)                                                             v1/todos#create
        todo    GET    /todos/:id(.:for                                                             v1/todos#show
                PATCH  /todos/:id(.:format)                                                         v1/todos#update
                PUT    /todos/:id(.:format)                                                         v1/todos#update
                DELETE /todos/:id(.:format)                                                         v1/todos#destroy
    auth_login  POST   /auth/login(.:format)                                                        authentication#authenticate
        signup  POST   /signup(.:format)                                                            users#create


