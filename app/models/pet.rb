class Pet < ApplicationRecord
  SPECIES = ['Cat', 'Dog', 'Bunny', 'Snake', 'Dragon']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
