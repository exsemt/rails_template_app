# Rails template app
- rails 4.2.4
- ruby 2.2.3


## Installation and first steps

### postgres
    brew install postgres

### Clone application
    git clone git@github.com:exsemt/rails_template_app.git
    cd rails_template_app

### bundler
    gem install bundler

### .env
rename .env.example to .env

    mv .env.example .env

### Start foreman
    foreman start

### Create database
    rake db:create

### Create database tables
    rake db:migrate

### Fill database with test data (seeds)
    rake db:seed



# OR create rails app

    gem install rails
    gem install pg
    rails new rails_template_app -T --database=postgresql
