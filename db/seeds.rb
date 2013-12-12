# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

species = Species.create([{ common_name: 'London planetree', scientific_name: 'Platanus acerifolia' }, { common_name: 'Norway maple', scientific_name: 'Acer platanoides' }, 
	{ common_name: 'Callery pear', scientific_name: 'Pyrus calleryana' }, { common_name: 'Honey locust', scientific_name: 'Gleditsia triacanthos' },
	{ common_name: 'Pin oak', scientific_name: 'Quercus palustris' }, { common_name: 'Littleleaf linden', scientific_name: 'Tilia cordata' },
	{ common_name: 'Green ash', scientific_name: 'Fraxinus pennsylvanica' }, { common_name: 'Red maple', scientific_name: 'Acer rubrum' },
	{ common_name: 'Silver maple', scientific_name: 'Acer saccharinum' }, { common_name: 'Ginkgo', scientific_name: 'Ginkgo biloba' }])
