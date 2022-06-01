class Character < ApplicationRecord
  belongs_to :user
  has_many :chatrooms
  has_one_attached :photo
  validates :name, presence: true, length: { minimum: 6 }
end
