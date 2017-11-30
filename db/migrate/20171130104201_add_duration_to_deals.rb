class AddDurationToDeals < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :duration, :integer
  end
end
