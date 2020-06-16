class ChangeEngDefault < ActiveRecord::Migration[6.0]
  change_column :movies, :english, :boolean, default: true
end
