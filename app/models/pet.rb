class Pet < ApplicationRecord
  belongs_to :owner

  validates :animal_type, inclusion: { in: ["dog", "cat", "bird"] }
end
