Title: Bitter Blog

Team Members: Douglas Kim, Joanne Xu

Demo Link:

Idea: Like Twitter but bitter. Users can post their lamentations, group their posts into collections, and browse the most recent pessimisms of fellow lamenters on the homepage.

Models and Description:

User

has name, email, password
has many posts and collections
Post

has body text
belongs to user and can belong to collection as well
Collection

has name
belongs to user and has many posts
Features:

Users can log in
Users can make posts
Users can make collections and put posts into them
Users can make standalone posts (without putting them in collections)
Most recent posts can be seen in homepage
Division of Labor:

Douglas: controllers, views, pagination, styling of homepage, heroku deployment, demo

Joanne: model associations, controllers, test writing, this writeup