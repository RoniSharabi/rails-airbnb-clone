class AddCoordinatesToAlibis < ActiveRecord::Migration[5.1]
  def change
    add_column :alibis, :latitude, :float
    add_column :alibis, :longitude, :float
  end
end
