class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :destroy]
  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create 
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :location, :species, :lost_on)
  end
end
