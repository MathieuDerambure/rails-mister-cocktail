class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true, uniqueness: true
  validates :ingredient_id, uniqueness: true
  validates :cocktail_id, uniqueness: true


end
