class AnimalsController < ApplicationController
  def index
    @animals = Animal.AnimalsController
    json_response(@animals)
  end


end
