class ArcanasController < ApplicationController
  def index
    @arcanas = Arcana.all
    render json: @arcanas
  end
end
