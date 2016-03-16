# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tag.create(tag_title: "Poll")
Tag.create(tag_title: "Discussion")
Tag.create(tag_title: "Chat")
Tag.create(tag_title: "Gossip")
Tag.create(tag_title: "Question")
Tag.create(tag_title: "Hate!")