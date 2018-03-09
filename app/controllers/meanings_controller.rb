class MeaningsController < ApplicationController
  def index
    if params[:q]
      @meanings = Meaning.all.select do |meaning|
        meaning.name.downcase.include?(params[:q].downcase)
      end
    else
      @meanings = Meaning.all
    end
    render json: @meanings
  end

  def show
    @meaning = Meaning.find(params[:id])
    render json @meaning
  end
end
