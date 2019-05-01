class Owner < ApplicationRecord
  has_many :pets
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true
  validates :age, numericality: {only_integer: true}
  validate :above_18
  # validates :age, numericality: { greater_than_or_equal_to: 18 }

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.multi_pets
    Owner.all.select do |owner|
      owner.pets.length >= 2
    end
  end

  def above_18
    if self.age < 18
      errors.add(:age, "needs to be at least 18")
    end
  end
end
