class AddStatusAndDiscussionToDeals < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :status, :integer
    add_column :deals, :discussion, :text
  end
end
