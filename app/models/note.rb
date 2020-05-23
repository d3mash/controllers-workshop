class Note < ApplicationRecord
  has_many :comments

  belongs_to :user

  validates :header, length: { minimum: 1, maximum: 100 }
  validates :header, :content, presence: true
end
