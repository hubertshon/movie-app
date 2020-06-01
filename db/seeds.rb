require 'ffaker'
  # actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
  # actor.save

  # actor = Actor.new({first_name: "Amy", last_name: "Adams", known_for: "Arrival" })
  # actor.save

# 10.times do 
#   actor = Actor.new({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
#   actor.save
# end 

# movie = Movie.new(title: "Moana", year: 2016, plot:"In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana's island, she answers the Ocean's call to seek out the Demigod to set things right.")
# movie.save

# movie = Movie.new(title: "Dunkirk", year: 2017, plot:"Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II.")
# movie.save

# movie = Movie.new(title: "Ford v Ferrari", year: 2019, plot:"American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.")
# movie.save

# castcrew = Castcrew.new(title: "The Dark Knight", lead_actor: "Christian Bale", supporting_actor:"Heath Ledger", director: "Christopher Nolan" )
# castcrew.save

# castcrew = Castcrew.new(title: "Kung Fu Panda 2", lead_actor: "Jack Black", supporting_actor:"Gary Oldman", director: "Jennifer Yuh Nelson" )
# castcrew.save

movie = Movie.new(title: "Kung Fu Panda 2", year: 2011, plot: "Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.")
movie.save







