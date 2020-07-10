class Api::SuppliesController < ApplicationController

  def index
    @supplies = Supply.all
    render 'index.json.jb'
  end

  def show
    @supply = Supply.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
