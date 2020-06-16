class EditEngAttr < ActiveRecord::Migration[6.0]

change_column :movies, :english, 'boolean USING CAST(english AS boolean)'
end
