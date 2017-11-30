class Alibi < ApplicationRecord
  belongs_to :user
  has_many :deals, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, inclusion: {in: ["Relationship", "Education", "Family", "Work"]}
  validates :user_id, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
