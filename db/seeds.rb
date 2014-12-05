# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create! name: 'Douglas', email: 'douglas@douglas.com', password: 'password'
c1 = u.collections.create! name: 'Not That Bitter'
c2 = u.collections.create! name: 'Kind of Bitter'
c3 = u.collections.create! name: 'Bitter'
c4 = u.collections.create! name: 'Super Bitter'
c1.posts.create! body: 'Life is okay', user_id: 1
c1.posts.create! body: "I didn't trip today", user_id: 1
c3.posts.create! body: 'I ran into a car', user_id: 1
c3.posts.create! body: 'A car ran into me', user_id: 1
c3.posts.create! body: 'I fell onto a car', user_id: 1
c3.posts.create! body: 'A car fell onto me', user_id: 1
c3.posts.create! body: "I ran over a car", user_id: 1
c3.posts.create! body: "A car ran over me", user_id: 1
u.posts.create! body: "Wow I'm so bitter"
u.posts.create! body: 'I should bitter blog today'
u.posts.create! body: 'Bitter blogger bit a batter'
u.posts.create! body: 'Lalalala'
u.posts.create! body: 'Bitter. Yes.'
u.posts.create! body: 'Walalala'
u.posts.create! body: 'Cool'


u = User.create! name: 'Joanne', email: 'joanne@joanne.com', password: 'password'
c1 = u.collections.create! name: 'Feeling Bitter'
c2 = u.collections.create! name: 'Bitter Batter'
c3 = u.collections.create! name: 'Bitter Fruits'
c1.posts.create! body: 'Did that just happen?', user_id: 2
c2.posts.create! body: 'Feeling a little bitter', user_id: 2
u.posts.create! body: "Bitter low right now"
u.posts.create! body: 'Time to bitter blog!!'
u.posts.create! body: 'Bitter me not please'

u = User.create! name: 'Wonjun', email: 'wonjun@wonjun.com', password: 'password'
c1 = u.collections.create! name: 'Bitterest'
c2 = u.collections.create! name: 'Most Bitter'
c3 = u.collections.create! name: 'Bitterful'
c2.posts.create! body: 'Today is the worst day ever :(', user_id: 3
c3.posts.create! body: 'Today couldnt be any worse', user_id: 3
u.posts.create! body: "Bitter Blog is the best!"
u.posts.create! body: 'What should bitter about today?'


