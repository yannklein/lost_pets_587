class Pet < ApplicationRecord
  SPECIES = ["Dog", "Cat", "Bird", "Turtle", "Hamster", "Oyster"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
  validates :location, presence: true
  validates :lost_on, presence: true
end
