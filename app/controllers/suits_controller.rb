class SuitsController < ApplicationController
  def index
    @suits = Suit.all
    render json: @suits
  end

  def show
    @suit = Suit.find(params[:id])
    render json: @suit
  end
end
