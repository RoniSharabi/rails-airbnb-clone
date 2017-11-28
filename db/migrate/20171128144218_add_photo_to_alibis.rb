class AddPhotoToAlibis < ActiveRecord::Migration[5.1]
  def change
    add_column :alibis, :photo, :string
  end
end
