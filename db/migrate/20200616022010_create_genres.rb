class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    drop_table :genres
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end
  end
end
