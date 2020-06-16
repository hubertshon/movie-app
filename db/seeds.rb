# require 'ffaker'
  actor = Actor.new(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", age: 43, gender: "male", movie_id: 8)
  actor.save

  actor = Actor.new(first_name: "Amy", last_name: "Adams", known_for: "Arrival", age: 45, gender: "female", movie_id: 9)
  actor.save

  actor = Actor.new(first_name: "Jack", last_name: "Black", known_for: "School of Rock", age: 50, gender: "male", movie_id: 4)
  actor.save

  actor = Actor.new(first_name: "The", last_name: "Rock", known_for: "Jumanji", age: 48, gender: "male", movie_id: 1)
  actor.save

  actor = Actor.new(first_name: "Christian", last_name: "Bale", known_for: "The Dark Knight", age: 46, gender: "male", movie_id: 3) 
  actor.save

  actor = Actor.new(first_name: "Tara", last_name: "Strong", known_for: "Batman the Animated Series", age: 47, gender: "female", movie_id: 7)
  actor.save

  actor = Actor.new(first_name: "Carrie Ann", last_name: "Moss", known_for: "The Matrix", age: 52, gender: "female", movie_id: 5)
  actor.save

  actor = Actor.new(first_name: "So-Dam", last_name: "Park", known_for: "Parasite", age: 28, gender: "female", movie_id: 6)
  actor.save

  

# 10.times do 
#   actor = Actor.new({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
#   actor.save
# end 

# movie = Movie.new(title: "Moana", year: 2016, plot:"In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana's island, she answers the Ocean's call to seek out the Demigod to set things right.", director: "Ron Clements, John Musker", english: true)
# movie.save

# movie = Movie.new(title: "Dunkirk", year: 2017, plot:"Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II.", director: "Christopher Nolan", english: true)
# movie.save

# movie = Movie.new(title: "Ford v Ferrari", year: 2019, plot:"American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.", director: "James Mangold", english: true)
# movie.save

# movie = Movie.new(title: "Kung Fu Panda 2", year: 2011, plot:"Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.", director: "The Wachowski Brothers", english: true)
# movie.save

# movie = Movie.new(title: "The Matrix", year: 1999, plot:"A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.", director: "Jennifer Yuh Nelson", english: true)
# movie.save

# movie = Movie.new(title: "Parasite", year: 2019, plot:"Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.", director: "Bong Joon Ho", english: false)
# movie.save

# movie = Movie.new(title: "Spirited Away", year: 2001, plot:"During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.", director: "Hayao Miyazaki", english: false)
# movie.save

# movie = Movie.new(title: "The Imitation Game", year: 2014, plot:"During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.", director: "Morten Tyldum", english: true)
# movie.save

# movie = Movie.new(title: "Man of Steel", year: 2013, plot: "An alien child is evacuated from his dying world and sent to Earth to live among humans. His peace is threatened, when survivors of his home planet invade Earth.", director: "Zack Snyder", english: true)
# movie.save


# castcrew = Castcrew.new(title: "The Dark Knight", lead_actor: "Christian Bale", supporting_actor:"Heath Ledger", director: "Christopher Nolan" )
# castcrew.save

# castcrew = Castcrew.new(title: "Kung Fu Panda 2", lead_actor: "Jack Black", supporting_actor:"Gary Oldman", director: "Jennifer Yuh Nelson" )
# castcrew.save

# movie = Movie.new(title: "Kung Fu Panda 2", year: 2011, plot: "Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.")
# movie.save







