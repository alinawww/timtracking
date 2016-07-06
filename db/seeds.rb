# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name:"Crazy project", description: "you won't believe it").time_entries.create(hours: 3, minutes: 20, comments: "project1")
Project.create(name:"Time tracking app").time_entries.create(hours: 3, minutes: 20, comments: "project2")
Project.create(name:"Recipes", description: "for all the food").time_entries.create(hours: 3, minutes: 20, comments: "project3")
Project.create(name:"Marjon", description: "girl from Amsterdam").time_entries.create(hours: 3, minutes: 20, comments: "project4")
Project.create(name:"Steven", description: "guy form Nigeria").time_entries.create(hours: 3, minutes: 20, comments: "project5")
Project.create(name:"Lorenzo", description: "guy from Barcelona").time_entries.create(hours: 3, minutes: 20, comments: "project6")
Project.create(name:"Valentine", description: "girl from Switzerland").time_entries.create(hours: 3, minutes: 20, comments: "project7")
Project.create(name:"Jorge", description: "guy from Spain").time_entries.create(hours: 3, minutes: 20, comments: "project8")
Project.create(name:"Miguel", description: "guy from Spain").time_entries.create(hours: 3, minutes: 20, comments: "project9")
Project.create(name:"Alina", description: "girl from Romania").time_entries.create(hours: 3, minutes: 20, comments: "project10")
Project.create(name:"Nikel", description: "guy from Germany").time_entries.create(hours: 3, minutes: 20, comments: "project11")
Project.create(name:"Matias", description: "guy from Italy").time_entries.create(hours: 3, minutes: 20, comments: "project12")
