class Guardian < ApplicationRecord
  has_and_belongs_to_many :children
end
