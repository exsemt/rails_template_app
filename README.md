# Rails template app
- ruby 2.2.3
- rails 4.2.4


# Installation and first steps

## Clone application
 
    git clone git@github.com:exsemt/rails_template_app.git 

## postgres

    brew install postgres

## Rails

    gem install rails
    gem install pg
    rails new rails_template_app -T --database=postgresql

## .env
rename .env.example to .env

    mv .env.example .env

## Start foreman
    foreman start

## Create database
    rake db:create
