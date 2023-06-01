class AchivmentsController < ApplicationController
  def new
    @achivment = Achivment.new
  end

  def create
    @achivment = Achivment.create!(achivment_params)
    redirect_to root_path if @achivment.save
  end

  private

  def achivment_params
    params.require(:achivment).permit(:name)
  end
end
