class User < ApplicationRecord
  has_many :politicians
  has_many :bookings
  has_many :politicians, through: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
