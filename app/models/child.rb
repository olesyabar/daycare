class Child < ApplicationRecord
  has_and_belongs_to_many :guardians
end
