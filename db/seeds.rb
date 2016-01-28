# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(
  first_name: 'Steve', last_name: 'Zelaznik',
  email: 'steve.zelaznik@gmail.com',
  address: "219 6th St #2A\nSan Francisco, CA 94103",
  phone: '(410) 375-8414',
  twitter: 'stevezelaznik',
  blog: 'http://zelaznik.tumblr.com',
  github: 'http://www.github.com/zelaznik',
  linkedin: 'http://www.linkedin.com/in/zelaznik'
)

user.splashes.create! rank: 0,
p: "Full-stack developer with a passion for", h2: "Ruby On Rails"

user.splashes.create! rank: 1,
p: "Five years writing financial software in", h2: "Python / PostgreSQL"

user.splashes.create! rank: 2,
p: "Public radio junkie, swing dancer, the hobbies go on", h2: "Learn More"
