module API
  class KittensController < ApplicationController
    def index
      @kittens = Kitten.all
      render json: @kittens
    end

    def show
      @kitten = Kitten.find(params[:id])
      render json: @kitten
    end
  end
end