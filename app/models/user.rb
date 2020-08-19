class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :chef_bookings, class_name: "Booking", foreign_key: "chef_id"
  scope :chefs, -> { where(chef: true) }
  has_one_attached :photo
end

#you can call chef_bookings anything you want
