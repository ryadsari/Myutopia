class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
end
