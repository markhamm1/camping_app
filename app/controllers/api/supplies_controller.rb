class Api::SuppliesController < ApplicationController

  

  def index
    @supplies = Supply.all
    render 'index.json.jb'
  end

  def show
    @supply = Supply.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @supply = Supply.new(
      name: params[:name],
      department: params[:department],
      price: params[:price]
    )
    if @supply.save
      render 'show.json.jb'
    else
      render json: {errors: @supply.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @supply = Supply.find_by(id: params[:id])
    @supply.update(
      name: params[:name] || @supply.name,
      department: params[:department] || @supply.department,
      price: params[:price] || @supply.price
    )
    render 'show.json.jb'
  end

  def destroy
    @supply = Supply.find_by(id: params[:id])
    @supply.destroy
    render :json => {message: "The item has been deleted"}
  end
end
