# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	categories = Category.create([
		{ category_id: 1, category_name: "Breakfast" },
		{ category_id: 2, category_name: "Lunch" },
		{ category_id: 3, category_name: "Dinner" },
		{ category_id: 4, category_name: "Thai" },
		{ category_id: 5, category_name: "Chinese" },
		{ category_id: 6, category_name: "Mexican" },
		{ category_id: 7, category_name: "Italian" },
		{ category_id: 8, category_name: "Indian" },
		{ category_id: 9, category_name: "Vietnamense" },
		{ category_id: 10, category_name: "Comfort Food" },
		{ category_id: 11, category_name: "Sushi" },
		{ category_id: 12, category_name: "Ramen" },
		{ category_id: 13, category_name: "Mediterranean" },
		{ category_id: 14, category_name: "Korean" },
		{ category_id: 15, category_name: "Brunch" },
		{ category_id: 16, category_name: "Other" },
		])

	areas = Area.create([
		{ area_id: 1, area_name: "Albany Park" },
		{ area_id: 2, area_name: "Andersonville" },
		{ area_id: 3, area_name: "Avondale" },
		{ area_id: 4, area_name: "Beverly" },
		{ area_id: 5, area_name: "Boystown" },
		{ area_id: 6, area_name: "Bridgeport" },
		{ area_id: 7, area_name: "Bucktown" },
		{ area_id: 8, area_name: "Bronzeville" },
		{ area_id: 9, area_name: "Chinatown" },
		{ area_id: 10, area_name: "Edgewater" },
		{ area_id: 11, area_name: "Gold Coast" },
		{ area_id: 12, area_name: "Humboldt Park" },
		{ area_id: 13, area_name: "Hyde Park" },
		{ area_id: 14, area_name: "Irving Park" },
		{ area_id: 15, area_name: "Jefferson Park" },
		{ area_id: 16, area_name: "Kenwood" },
		{ area_id: 17, area_name: "Lakeview" },
		{ area_id: 18, area_name: "Lincoln Park" },
		{ area_id: 19, area_name: "Lincoln Square" },
		{ area_id: 20, area_name: "Little Italy" },
		{ area_id: 21, area_name: "Little Village" },
		{ area_id: 22, area_name: "Logan Square" },
		{ area_id: 23, area_name: "Loop" },
		{ area_id: 24, area_name: "Magnificent Mile" },
		{ area_id: 25, area_name: "North Center" },
		{ area_id: 26, area_name: "North Park" },
		{ area_id: 27, area_name: "Old Town" },
		{ area_id: 28, area_name: "Pilsen" },
		{ area_id: 29, area_name: "Portage Park" },
		{ area_id: 30, area_name: "Pullman" },
		{ area_id: 31, area_name: "River North" },
		{ area_id: 32, area_name: "Rogers Park" },
		{ area_id: 33, area_name: "Roscoe Village" },
		{ area_id: 34, area_name: "South Loop" },
		{ area_id: 35, area_name: "South Shore" },
		{ area_id: 36, area_name: "Streeterville" },
		{ area_id: 37, area_name: "Uptown" },
		{ area_id: 38, area_name: "University Village" },
		{ area_id: 39, area_name: "West Loop" },
		{ area_id: 40, area_name: "West Ridge" },
		{ area_id: 41, area_name: "West Town" },
		{ area_id: 42, area_name: "Wicker Park" },		
		{ area_id: 43, area_name: "Wrigleyville" },
		])
