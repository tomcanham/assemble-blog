# README

Please have Ruby 2.7.1 and Node v12.16.1 installed. Additionally, this application assumes (in dev mode) that MongoDB is available to the default user on localhost:27017. I recommend Docker:

```
mkdir ~/data
docker run -d -p 27017:27017 -v ~/data:/data/db mongo
```

After cloning the repo and starting MongoDB, do the following:

```
bundle install
rails s
```

Note that you will need to create a user and login in order to modify posts at all!

Ran out of time to:

* Pretty the blog up (was working on a flexbox styling system, seen in the SCSS).
* Add "username" as opposed to email address (probably just add a User attribute with a uniqueness constraint)
* Add true nav bar (as opposed to just links in a nav element)
* Add mongoid-history stuff
