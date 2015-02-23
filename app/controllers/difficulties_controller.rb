class DifficultiesController < ApplicationController
  def index
    @difficulties = Difficulty.all
  end

  def show
    @difficulty = Difficulty.find(params[:id])
  end

  def new
    @difficulty = Difficulty.new
  end

  def create
    @difficulty = Difficulty.new
    @difficulty.level = params[:level]

    if @difficulty.save
      redirect_to difficulties_url, :notice => "Difficulty created successfully."
    else
      render 'new'
    end
  end

  def edit
    @difficulty = Difficulty.find(params[:id])
  end

  def update
    @difficulty = Difficulty.find(params[:id])

    @difficulty.level = params[:level]

    if @difficulty.save
      redirect_to difficulty_url(@difficulty.id), :notice => "Difficulty updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @difficulty = Difficulty.find(params[:id])

    @difficulty.destroy

    redirect_to difficulties_url, :notice => "Difficulty deleted."
  end
end
