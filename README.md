#Up_Link
Up_Link lets users create and up vote links to share.

The project is for the [Conventional rails assessment](http://www.learnhowtoprogram.com/lessons/conventional-rails-assessment) for [Epicodus](http://www.epicodus.com/).

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/keebz/up_link.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

##Author
[Lee Kebler](http://keebz.com)

##License
MIT