class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :destroy]

  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:success] = "Kitten adopted!"
      redirect_to root_path
    else
      flash.now[:info] = "Something went wrong"
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
    @kitten.destroy
    flash[:info] = "The kitten is given away!"
    redirect_to root_path
  end

  private
    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end

    def set_kitten
      @kitten = Kitten.find(params[:id])
    end
end
