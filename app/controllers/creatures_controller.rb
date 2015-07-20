  class CreaturesController < ApplicationController

    def index
    @creatures = Creature.all
    end



    def show
    @creature = Creature.find(params[:id])
    @creature = Creature.find(params[:id])
    end



    def new
        @creature = Creature.new

    end

    def create
      @creature = Creature.new(allowed_params)

      if @creature.save
        redirect_to @creature

      else
        render 'new'
      end
    end
    def edit
        @creature = Creature.find(params[:id])
    end

    def update
      @update = Creature.find(params[:id])
      if @creature.update_attributes(allowed_params)
          redirect_to @creatures
        end
    end

    def destroy
    end

    private
      def allowed_params
          params.require(:creature).permit(:name, :description)

    end
end
