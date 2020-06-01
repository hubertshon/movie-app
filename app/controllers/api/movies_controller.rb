class Api::MoviesController < ApplicationController
  def get_info
    @movies = Movie.all
    render "movielist.json.jb"
  end

  def get_one
    @movies = Movie.find_by(id:1)
    render "movielist.json.jb"
  end
end
