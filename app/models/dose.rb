class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true, uniqueness: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, presence: true, uniqueness: {scope: :ingredient_id}


end
