class Api::MoviesController < ApplicationController
  
  def search
    @movies = Movie.find_by(year:params[:year].to_i)
    if @movies
      render "search.html.erb"
    else 
      render json: { message: "No result" }
    end
  end

  def index
    @movies = Movie.all#(english: :true)
    render "index.json.jb"
    #render "index.html.erb"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
    #render "show.html.erb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: { messages: @movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render "show.json.jb"
    else
      render json: { messages: @movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: { message: "Item deleted." }
  end

end
