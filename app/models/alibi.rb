class Alibi < ApplicationRecord
  belongs_to :user
  has_many :deals
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, inclusion: {in: ["Relationship", "Education", "Family", "Work"]}
  validates :user_id, presence: true
  # mount_uploader :photo, PhotoUploader
end
