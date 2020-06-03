class Api::MoviesController < ApplicationController
  
  
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movies = Movie.find(params[:id])
    render "show.json.jb"
  end

  def create
    @movies = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    @movies.save
    render  "show.json.jb"
  end

  def update
    @movies = Movie.find(params[:id])
    @movies.title = params[:title]
    @movies.year = params[:year]
    @movies.plot = params[:plot]
    @movies.save
    render "show.json.jb"
  end

  def destroy
    @movies = Movie.find(params[:id])
    @movies.destroy
    render json: { message: "Item deleted." }
  end


end
