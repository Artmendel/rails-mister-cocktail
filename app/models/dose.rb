class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail,
            message: "This unique cocktail / ingredient relation already exist" }
end
