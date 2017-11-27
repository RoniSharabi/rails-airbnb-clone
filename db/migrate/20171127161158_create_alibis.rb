class CreateAlibis < ActiveRecord::Migration[5.1]
  def change
    create_table :alibis do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
