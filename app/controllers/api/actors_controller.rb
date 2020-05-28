class Api::ActorsController < ApplicationController

  def look_up
    @actors = Actor.find_by(id: 6)
    render "actorlist.json.jb"
  end
end
