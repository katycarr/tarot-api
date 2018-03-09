class CardsController < ApplicationController
  def index
    if params[:q]
      @cards = Card.all.select do |card|
        card.names_include(params[:q])
      end
    elsif params[:suit]
      @cards = Card.all.select do |card|
        card.suit.name.downcase == params[:suit].downcase
      end
    elsif params[:meaning]
      @cards = Card.all.select do |card|
        card.meanings_include(params[:meaning])
      end
    else
      @cards = Card.all
    end
    render json: @cards
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      render json: @card
    else
      render json: { errors: @card.errors.full_messages }, status: 422
    end
  end

  def show
    @card = Card.find(params[:id])
    render json: @card
  end

  private

  def card_params
    params.require(:card).permit(:name, :number, :arcana_id, :suit_id, :img_url, :alternate_names => [])
  end
end
