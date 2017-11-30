class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :deals
  has_many :alibis
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
