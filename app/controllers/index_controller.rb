class IndexController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  def home
    @gossips = Gossip.all
  end
  def welcome
    @gossips = Gossip.all
  end
  def show
    @gossips = Gossip.all
  end
end
