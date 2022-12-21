class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :comment, presence: true
end
