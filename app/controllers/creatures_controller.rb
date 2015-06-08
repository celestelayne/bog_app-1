class CreaturesController < ApplicationController

  # This calls the method find_creature for the following actions
  # Keeps code DRY
  before_action :find_creature, only: [:show, :edit]

  def index
    @creatures = Creature.all
    # The app will automatically look for a view of the same name as the action
    # render :index
  end

  def new
    @creature = Creature.new
  end

  def show
  end

  def edit
  end

  def create
    creature = Creature.create creature_params
    # redirect_to "/planes/#{plane.id}"
    redirect_to creature_path(creature)   # pass the Active Record object to a path helper
  end

  def update
    creature = Creature.find params[:id]
    creature.update_attributes creature_params
    redirect_to creature_path(creature)
  end

  def destroy
    creature = Creature.find params[:id]
    creature.destroy
    redirect_to creatures_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

  def find_creature
    @creature = Creature.find params[:id]
  end

end
