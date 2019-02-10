class GossipController < ApplicationController
  def show
    #@gossips = Gossip.all
    @potin = Gossip.find(params[:id])
    #@potin = Gossip.find(5).content
  end
  def index
    @gossips = Gossip.all
    @id_potin = params[:id_potin]
  end
  def welcome
  end
    
end
