class SpreadsController < ApplicationController
  def index
    @spreads = Spread.all
    render json: @spreads
  end

  def show
    @spread = Spread.find(params[:id])
    render json: @spread, serializer: SpreadDetailSerializer
  end
end
