class AnimalsController < ApplicationController
  def index
    @animals = Animal.AnimalsController
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Created animal successfully."
      }
    end
  end

  def destroy
    if @animal.destroy!
      render status: 200, json: {
        message: "Deleted animal successfully."
      }
    end
  end

  
end
