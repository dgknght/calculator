class CalculationsController < ApplicationController
  def new
    @calculation = Calculation.new
  end

  def perform
    @calculation = Calculation.new calculation_params
  end

  private

  def calculation_params
    params.require(:calculation).permit(:input)
  end
end
