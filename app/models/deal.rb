class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :alibi
  validates :start_date, presence: true
  validates :duration, presence: true

  def end_date
    start_date + duration.hours
  end

  def refuse!
    status = 2
  end

  def accept!
    status = 1
  end

  def accepted?
    status == 1
  end

  def refused?
    status == 2
  end

  def pending?
    status == 0
  end

  def price
    if alibi
      alibi.price * duration
    else
      0
    end
  end
end
