# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create! name: 'Douglas', email: 'douglas@douglas.com', password: 'password'
u.collections.create! name: 'collection1'
u.collections.create! name: 'collection2'
u.posts.create! body: 'post1 lalala'
u.posts.create! body: 'post2 lalala'

u = User.create! name: 'Joanne', email: 'joanne@joanne.com', password: 'password'

u = User.create! name: 'Wonjun', email: 'wonjun@wonjun.com', password: 'password'
