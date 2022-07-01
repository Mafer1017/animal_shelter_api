class PetsController < ApplicationController

  def index
    if !params[:page]
      @pets = Pet.all
    else
      @pets = Pet.paginate(page: params[:page], per_page: 10)
    end
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    @pet = Pet.create!(pet_params)
    json_response(@pet, :created)
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: 200, json: { message: "This pet has been updated successfully."}
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    if @pet.destroy
      render status: 200, json: { message: "This pet has been removed successfully."}
    end
  end

  private

  def pet_params
    params.permit(:name, :species)
  end
end 