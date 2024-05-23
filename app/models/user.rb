class User < ApplicationRecord
  has_many :politicians
  has_many :bookings
  has_many :booked_politicians, through: :bookings, source: :politician

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true, format: { with: /\w*@\w*\..{3}/ }
  validates :password, presence: true

  before_validation :email_strip

  private

  def email_strip
    self.email = email.strip unless email.nil?
  end

end
