class RemoveEndDateToDealsr < ActiveRecord::Migration[5.1]
  def change
    remove_column :deals, :end_date
  end
end
