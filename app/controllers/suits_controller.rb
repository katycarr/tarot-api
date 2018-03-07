class SuitsController < ApplicationController
  def index
    @suits = Suit.all
    render json: @suits
  end
end
