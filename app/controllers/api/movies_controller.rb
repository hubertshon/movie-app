class Api::MoviesController < ApplicationController
  
  
  def index
    @movies = Movie.where(english: :true)
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
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movies.save
      render "show.json.jb"
    else
      render json: { messages: @movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @movies = Movie.find(params[:id])
    @movies.title = params[:title] || @movies.title
    @movies.year = params[:year] || @movies.year
    @movies.plot = params[:plot] || @movies.plot
    @movies.director = params[:director] || @movies.director
    @movies.english = params[:english] || @movies.english
    if @movies.save
      render "show.json.jb"
    else
      render json: { messages: @movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @movies = Movie.find(params[:id])
    @movies.destroy
    render json: { message: "Item deleted." }
  end


end
