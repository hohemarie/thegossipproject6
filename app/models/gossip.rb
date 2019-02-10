class Gossip < ApplicationRecord
  belongs_to :user, optional: true # le gossip est liee a l'utilisateur qui le cree
  has_many :tag # un tag peut etre liee a plusieurs gossip
end
