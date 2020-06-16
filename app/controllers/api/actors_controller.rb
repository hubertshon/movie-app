class Api::ActorsController < ApplicationController

before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.order(age: :desc)
    render "index.json.jb"
  end

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    age: params[:age],
    gender: params[:gender],
    movie_id: params[:movie_id]
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { messages: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @actors = Actor.find(params[:id])
      @actors.first_name = params[:first_name] || @actors.first_name
      @actors.last_name = params[:last_name] || @actors.last_name
      @actors.known_for = params[:known_for] || @actors.known_for
      @actors.age = params[:age] || @actors.age
      @actors.gender = params[:gender] || @actors.gender
      @actors.movie_id = params[:movie_id] || @actors.movie_id
      if @actors.save
        render "show.json.jb"
      else
        render json: { messages: @actors.errors.full_messages }, status: :unprocessable_entity
      end
  end

  def destroy
    @actors = Actor.find(params[:id])
    @actors.destroy
    render json: { message: "Item Deleted" }
  end

end
