class CardsController < ApplicationController

    def index
        search_date = params[:search_date]
        start_datetime = search_date.to_datetime.beginning_of_day
        end_datetime = search_date.to_datetime.end_of_day
        @result = Card.where(created_at: start_datetime..end_datetime).first
        # @card = Card.where(created_at: params[:search_date]).first
    end

    def new
        @cards = Card.new
    end

    def create
        # @card = Card.new(card_params)
        @card = Card.new(arrival_time: params[:arrival_time], departure_time: params[:departure_time], arrival_image: params[:arrival_image], departure_image: params[:departure_image])
        if @card.save
            render json: @card, status: :created
          else
            render json: @card.errors, status: :unprocessable_entity
        end
    end

    def edit
        @card = Card.find_by(id: params[:id])
    end

    def update
        if @card.update(card_params)
            redirect_to "/"
        else
            render :edit
        end
    end

    def destroy
        @card = Card.find_by(id: params[:id])
        @card.destroy
        redirect_to "/"
    end

    # private
    # def card_params
    #     params.require(:card).permit(:arrival_time, :departure_time, :arrival_image, :departure_time)
    # end
    # ストロングパラメータでなぜかエラー
end
