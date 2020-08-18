class Booking < ApplicationRecord
  belongs_to :user #this is fine
  belongs_to :chef, class_name: "User" # this is because there are two foreign_key links to the user table
end
