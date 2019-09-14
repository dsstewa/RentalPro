class AssetsController < ApplicationController
  def new
    
    @asset = Asset.new
    
  end

  def create
    binding.pry
  end


end

