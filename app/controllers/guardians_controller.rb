class GuardiansController < ApplicationController

  before_action :set_guardian, only: %i[ show edit update destroy ]

  def login
  end

  def index
    @guardians = Guardian.all
  end

  def show
  end

  def new
    @guardian = Guardian.new
  end

  def edit
  end

  def create
    @guardian = Guardian.new(guardian_params)
    if @guardian.save
      flash.notice = "Guardian was successfully created!"
      redirect_to @guardian
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @guardian.update(guardian_params)
      flash.notice = "Guardian was successfully updated!"
      redirect_to @guardian
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @guardian.destroy
    flash.notice = "Guardian was successfully deleted!"
  end

  private
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    def guardian_params
      params.require(:guardian).permit(:first_name, :last_name)
    end
end