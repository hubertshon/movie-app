class CreateMovieGenres < ActiveRecord::Migration[6.0]
  def change
    drop_table :movie_genres
    create_table :movie_genres do |t|
      t.integer :genre_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
