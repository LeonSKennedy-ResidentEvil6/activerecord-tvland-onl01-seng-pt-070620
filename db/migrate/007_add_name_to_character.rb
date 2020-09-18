class AddNameToCharacter < ActiveRecord::Migration[5.1]
    add_column :characters, :name, :string
end 