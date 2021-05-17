# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.destroy_all

Kitten.create([
	{
		name: "Bola de nieve",
        age: 21,
        cuteness: "mid",
        softness: "high"			
	},
	{
        name: "Viernes 13",
        age: 51,
        cuteness: "ultra",
        softness: "ultra"	
	},
    {
        name: "Hunter",
        age: 5,
        cuteness: "low",
        softness: "mid"	
	},
    {
        name: "Cachibache",
        age: 13,
        cuteness: "high",
        softness: "wow"	
	}
])

p "Created #{Kitten.count} categories"