class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :chef_bookings, class_name: "Booking", foreign_key: "chef_id"
  scope :chefs, -> { where(chef: true) }
  has_one_attached :photo
  has_one_attached :chef_photo
  include PgSearch::Model
   pg_search_scope :search_by_cuisine,
      against: [:cuisine],
      using: {
        tsearch: { prefix: true }
      }
end
