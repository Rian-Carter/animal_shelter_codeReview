module Api
  module V2
    class AnimalsController < ApplicationController
      
      def index
        # @animals = Animal.all.order("breed ASC").paginate(:page => params[:page], :per_page => 5)
        # @animals = Animal.all.order("breed DESC").paginate(:page => params[:page], :per_page => 5)
        # @animals = Animal.all.order("id ASC").paginate(:page => params[:page], :per_page => 5)
        @animals = Animal.all.order("id ASC").paginate(:page => params[:page], :per_page => 5)
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
            message: "Updated animal successfully."
          }
        end
      end

      def destroy
        @animal = Animal.find(params[:id])
        if @animal.destroy!
          render status: 200, json: {
            message: "Deleted animal successfully."
          }
        end
      end

      private
      def animal_params
        params.permit(:species, :breed, :age, :name, :gender)
      end
    end
  end
end
