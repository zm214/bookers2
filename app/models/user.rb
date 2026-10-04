class User < ApplicationRecord
  has_one_attached :profile_image
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  has_many :books, dependent: :destroy
end
