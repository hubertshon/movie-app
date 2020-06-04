class AddDirectorToMovie < ActiveRecord::Migration[6.0]

add_column :movies, :director, :string
add_column :movies, :english, :string
end
