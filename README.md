# Marmoset Tech Team Challenge

## Objective:

In this challenge, you will create a simple program runnable in irb, and tested in rspec. This program will add and remove songs on an artist and also keep track of genres and featured songs. Make sure to complete all the requirements listed below.

## Setup:

* install Ruby@3.1.4 and Rails
    * Windows: Follow a Tutorial like this: https://billicodes.medium.com/how-to-install-rails-on-windows-11-step-by-step-5bf24c63527a then the following as needed.
        * run `bundle install` from within the directory
        * Then with either yarn or npm installed run `rails webpacker:install`
        * Then `yarn install` or `npm install`
    * Mac: install rvm and rails using brew or whatever method/package manager you prefer
* clone this repo
* install rspec
* setup new rails project
* scaffold necessary objects

```
$ git clone https://github.com/MarmosetMusic/marmo-code-challenge.git
$ cd marmo-code-challenge
$ gem install rspec

//Set up base project:
$ rails new .

// scaffold Artist and Song models, controllers, pages, etc
$ rails generate scaffold artist [necessary attributes and their types] 
$ rails generate scaffold song [necessary attributes and their types] 
```

## Requirements:

* Complete the song and artist models provided
* Provide ability to add and remove songs to an artist
* An artist can *only* have one featured song, but it's not required
* When a song is marked as featured, it should replace any currently featured song
* Every time you add or delete a song, the artist's top 3 genres and song count are recalculated
* Upon song addition/removal, the output should print the artist's updated information (see example)

**Console Output example:**

```
$ rails c
$ artist = Artist.new(...)
$ song = Song.new(...)
$ artist.add_song(song) # name "add_song" however you wish
$ { id: 1, name: 'Some Artist', song_count: 2, top_genres: ['Folk', 'Pop', 'Rock'], featured_song_id: 3 }
```

* With the models and business logic set up, update the controllers and views as necessary to add and remove Artists and their songs
* Add page for viewing Artists, their songs and featured song, song count and top genres
* Follow rspec guide http://betterspecs.org/ to test all relevant methods
* extra credit: Improve the UX/UI of the website by changing the styling/css of the website and adding JavaScript better form interactions

## Notes:

One commit is _fine_, but it would be nice to see your though process through multiple commits. This is up to you.
We will be looking for code cleanliness, method naming/length, understanding of data design, and appropriate test coverage.

## To submit:

* `git bundle create marmoset.bundle master`
* Email the marmoset.bundle file to dev@marmosetmusic.com
* Subject should be "Marmo Code Challenge - YOUR NAME"
