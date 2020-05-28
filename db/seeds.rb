require 'ffaker'
  # actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
  # actor.save

  # actor = Actor.new({first_name: "Amy", last_name: "Adams", known_for: "Arrival" })
  # actor.save

10.times do 
  actor = Actor.new({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: Ffaker::title})
  actor.save
end 

