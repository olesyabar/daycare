class Event < ApplicationRecord
  belongs_to :child
  belongs_to :guardian

  validates_inclusion_of :event_type, in: [true, false]
  validates_associated :child, :guardian
end
