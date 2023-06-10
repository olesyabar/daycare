class Guardian < ApplicationRecord
  has_and_belongs_to_many :children
  has_many :events

  validates :first_name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :last_name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
end
