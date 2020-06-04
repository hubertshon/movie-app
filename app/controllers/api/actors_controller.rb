class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    @actors = Actor.find(params[:id])
    render "show.json.jb"
  end

  def create
    @actors = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    age: params[:age],
    gender: params[:gender],
    )
    @actors.save
    render "show.json.jb"
  end

  def update
    @actors = Actor.find(params[:id])
      @actors.first_name = params[:first_name] || @actors.first_name
      @actors.last_name = params[:last_name] || @actors.last_name
      @actors.known_for = params[:known_for] || @actors.known_for
      @actors.age = params[:age] || @actors.age
      @actors.gender = params[:gender] || @actors.gender
      @actors.save
      render "show.json.jb"
  end

  def destroy
    @actors = Actor.find(params[:id])
    @actors.destroy
    render json: { message: "Item Deleted" }
  end

end
