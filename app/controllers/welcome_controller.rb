class WelcomeController < ApplicationController
  def home 
    @gossips = Gossips.all
  end
  def index
    @gossips = Gossip.all
  end
  def show 
    @gossips = Gossip.all
  end
  def welcome
    @gossips = Gossip.all
  end
end
