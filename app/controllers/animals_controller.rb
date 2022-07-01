class AnimalsController < ApplicationController
  def index
    @animals = Animal.AnimalsController
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
end
