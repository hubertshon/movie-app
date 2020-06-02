class Api::ActorsController < ApplicationController

  def look_up
    @actors = Actor.find(params[:index])
    render "actorlist.json.jb"
  end

  
  def list_all
    @actors = Actor.all
    render "actorlist.json.jb"
  end
end
