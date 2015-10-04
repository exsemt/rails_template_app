# Rails template app
This is a simple Ruby on Rails application example with Postgres, foreman, bootstrap-sass, simple_form, devise and capistrano. 

- rails 4.2.4
- ruby 2.2.3

## Start DB and rails server with foreman
Foreman can help manage multiple processes that your Rails app depends upon when running in development. E.g. to start Postgers and rails server.

    foreman start

## Installation and first steps
Hire is simple description for a first step to install DB, clone repo and start rails server.

### Installing Postgres on OS X
    brew install postgres

### Clone application
    git clone git@github.com:exsemt/rails_template_app.git
    cd rails_template_app

### bundler
    gem install bundler

### .env
rename `.env.example` to `.env`

    mv .env.example .env

### Start DB and rails server with foreman
    foreman start

### Create database
open new tab and create DB

    rake db:create

### Create database tables
    rake db:migrate

### Fill database with test data (seeds)
    rake db:seed



# OR create rails app
    gem install rails
    gem install pg
    rails new rails_template_app -T --database=postgresql
