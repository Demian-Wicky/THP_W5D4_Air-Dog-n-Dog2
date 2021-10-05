# Air-Dog-n-Dog (100% finished)

A Ruby on Rails application inspired by airbnb containing a relational database.
The data comes from the `db>seeds.rb` file.
<br><br>
<img src="preview/AirDogNDog.svg" >

## Table of contents

* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info

Made during [The Hacking Project](https://www.thehackingproject.org) course on Week5 Day4.

## Technologies

Project is created with

- Ruby on Rails 5.2.3

## Setup

First, go to the RoR project folder and type:

```ruby
bundle install
```

then enter the console:

```ruby
rails c
```

You can now display all the tables with the table_print gem

```ruby
tp Dog.all
```

```ruby
tp Dogsitter.all
```

```ruby
tp City.all
```

```ruby
tp Stroll.all
```
