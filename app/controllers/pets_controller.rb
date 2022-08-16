class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    if @pet.destroy
      redirect_to pets_path
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :location, :found)
  end
end
