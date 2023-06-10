class GuardiansController < ApplicationController

  before_action :set_guardian, only: [:show]

  def index
    @guardians = Guardian.all
  end

  def show
  end

  def new
  end

  def create
  end

  private
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    def guardian_params
      params.require(:guardian).permit(:first_name, :last_name)
    end
end