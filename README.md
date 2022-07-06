# Animal Shelter API

## Description

_An API for adoptable dogs and cats_

## Technologies Used

* Ruby
* Rails
* RSPEC
* pry
* Postgres
* SQL
* Faker
* will_paginate
* Shoulda-Matchers
* Versioning
* API

## With the use of this project's API, users will be able to access instances of specific animals that are stored in a database used by hypothetical animal shelters. Versioning is also utilized, perhaps on a larger scale, to design APIs. Additionally, pagination allows the user to limit the display of results to 5 at a time.

## Setup/Installation Requirements

1. `$ git clone` [this repository](https://github.com/Rian-Carter/animal_shelter_codeReview.git)
2. In your terminal navigate to the root of the project and run command `$ bundle install`
3. You will need to have "postgres" installed on your machine
4. In your terminal run command `postgress` or `pg_ctl start` to start the server
5. NOTE: If you are running this application on a Windows machine you will need to navigate to `config/database.yml` and add the following:
```
development:
  <<: *default
database: animal_shelter_api_development
username: <%= ENV['POSTGRES_USERNAME'] %>
password: <%= ENV['POSTGRES_PASSWORD'] %>

test:
  <<: *default
  database: animal_shelter_api_test
  username: <%= ENV['POSTGRES_USERNAME'] %>
  password: <%= ENV['POSTGRES_PASSWORD'] %>

production:
  <<: *default
  database: animal_shelter_api_production
  username: <%= ENV['POSTGRES_USERNAME'] %>
  password: <%= ENV['ANIMAL_SHELTER_API_DATABASE_PASSWORD'] %>
```

6. Run command `$ rake db:create`
7. Run command `$ rake db:migrate`
8. Run command `$ rake db:test:prepare`
9. Run command `$ rake db:seed`
10. Run command `$ rspec` to see all passing tests
11. Run command `$ rails s`
12. To view all animals in the database you can use software liek Postman[https://www.postman.com/downloads/], Then send a GET request to `localhost:3000/api/v1/animals` -Alternatively in your terminal you can run the command `$ curl http://localhost:3000/api/v1/animals`

## Endpoint
| Usage | Method | URL | Parameters |
| :---: | :---: | :---: | :---: |
| See All Animals | GET | `localhost:3000/api/v1/animals` |  |
| See All Animals | GET | `localhost:3000/api/v2/animals` |  |
| See 5 Animals at a time | GET | `localhost:3000/api/v2/animals?page=1` | :page |
| Find Animal by ID | GET | `localhost:3000/api/v1/animals/:id` | :id |
| Find Animal by ID | GET | `localhost:3000/api/v2/animals/:id` | :id |
| Create an Animal | POST | `localhost:3000/api/v1/animals` | :species, :breed, :age, :name, :gender |
| Create an Animal | POST | `localhost:3000/api/v2/animals` | :species, :breed, :age, :name, :gender |
| Update animal entry | PUT | `localhost:3000/api/v1/animals/:id` | :species, :breed, :age, :name, :gender |
| Update animal entry | PUT | `localhost:3000/api/v2/animals/:id` | :species, :breed, :age, :name, :gender |
| Delete animal entry | DELETE | `localhost:3000/api/v1/animals/:id` | :id |
| Delete animal entry | DELETE | `localhost:3000/api/v2/animals/:id` | :id |


## Known Bugs

* There are no known bugs at this time
* Please forward any bugs to R.c@rt3%8*@ho***il.com

## License

* MIT https://en.wikipedia.org/wiki/MIT_License
* Copyright (c) 7/1/2022