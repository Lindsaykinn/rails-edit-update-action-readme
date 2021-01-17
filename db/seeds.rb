# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = Article.create([
  {title: "Test1", description: "Test for lab1"},
  {title: "Test2", description: "Test for lab2"},
  {title: "Test3", description: "Test for lab3"},
  {title: "Test4", description: "Test for lab4"},
  {title: "Test5", description: "Test for lab5"},
])