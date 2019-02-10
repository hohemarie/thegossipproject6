class City < ApplicationRecord
  has_many :user # je dis qu'une ville peut avoir plusieurs utilisateurs
end
