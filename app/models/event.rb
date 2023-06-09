class Event < ApplicationRecord
  belongs_to :child
  belongs_to :guardian
end
