class Movie < ApplicationRecord

  validates :title, presence: true
  validates :year, numericality: { greater_than: 1885, less_than: 2200 }
  validates :plot, length: { minimum: 5 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map { |genre| genre.name }
  end

end
