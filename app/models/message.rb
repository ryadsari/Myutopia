class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :character
  validates :content, presence: true, length: { minimum: 2 }
end
