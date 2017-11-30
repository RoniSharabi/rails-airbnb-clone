class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :alibi
  validates :start_date, presence: true
  validates :duration, presence: true

  def end_date
    start_date + duration.hours
  end
end
