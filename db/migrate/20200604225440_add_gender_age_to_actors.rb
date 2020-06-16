class AddGenderAgeToActors < ActiveRecord::Migration[6.0]
  add_column :actors, :age, :integer 
  add_column :actors, :gender, :string
end
