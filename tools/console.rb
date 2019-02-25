require_relative '../config/environment.rb'


arbys = Restaurant.new("Arby's")
mcdumbles = Restaurant.new("McDumble's")
rainforest = Restaurant.new("Rainforest Cafe")
outback = Restaurant.new("Outback Steakhouse")

arbys1 = Location.new(arbys,"134 H ave", 200)
arbys2 = Location.new(arbys, "23432 S Lane", 2000)
arbys3 = Location.new(arbys,"62 Rotten Street", 400)
arbys4 = Location.new(arbys, "1 Awesome ave", 600)
outback1 = Location.new(outback, "64 House St", 3000)
outback2 = Location.new(outback, "32 greg Ln", 3400)
outback3 = Location.new(outback, "24 H Street", 1300)
outback4 = Location.new(outback, "55 fun ave", 1200)
rainforest1 = Location.new(rainforest, "54 time lane", 4400)
rainforest2 = Location.new(rainforest, "14 red ave", 14000)
rainforest3 = Location.new(rainforest, "1 great street", 2300)
rainforest4 = Location.new(rainforest, "44 ocean ave", 3300)
mcdumbles1 = Location.new(mcdumbles, "143 grimble ave", 800)
mcdumbles2 = Location.new(mcdumbles, "99 problems ave", 1100)
mcdumbles3 = Location.new(mcdumbles, "41 king street", 600)
mcdumbles4 = Location.new(mcdumbles, "40 turkey lane", 900)
rainforest.create_location("1234 Sunny Ave.", 3400)
mcdumbles.create_location("999 Adventure Cove", 115)


horace = Employee.new("Horance Bingleworth", 200, rainforest1)
chester = Employee.new("Chester Smalls", 1200, rainforest2)
grumpy = Employee.new("Grumpy the Dwarf", 120, rainforest2)
barnaby = Employee.new("Barnaby Willis", 800, rainforest4)
chewbacca = Employee.new("Chewbacca", 2000, mcdumbles2)

arbys1.hire_employee("Willy Wonka", 1200)
outback3.hire_employee("Chuck Norris", 2000000000)


binding.pry
