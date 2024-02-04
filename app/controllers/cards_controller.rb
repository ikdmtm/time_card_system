class CardsController < ApplicationController

    def index
        
    end

    def new
        @cards = Card.new
    end

    def create
        @card = Card.create(card_params)
        if @card.save
            redirect_to "/"
        else
            render :new
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

    private
    def card_params
        params.require(:card).permit(:arrival_time, :departure_time, images: [])
    end
end
