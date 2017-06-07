class User < ApplicationRecord
  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 },
    format: { with: /\A[a-z0-9]+\z/i }
  validates :score,
    presence: true,
    numericality: true
end
