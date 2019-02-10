class DynamicController < ApplicationController
  def gossip
    @gossips = Gossip.all
    #@id_potin = Gossip.find(infos.title).id
    #@potin = Gossip.find(@id_potin)
  end
end
