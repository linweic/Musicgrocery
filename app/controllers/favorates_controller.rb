class FavoratesController < ApplicationController
  before_filter :set_favorate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @favorates = Favorate.all
    respond_with(@favorates)
  end

  def show
    respond_with(@favorate)
  end

  def new
    @favorate = Favorate.new
    respond_with(@favorate)
  end

  def edit
  end

  def create
    @favorate = Favorate.new(params[:favorate])
    @favorate.save
    respond_with(@favorate)
  end

  def update
    @favorate.update_attributes(params[:favorate])
    respond_with(@favorate)
  end

  def destroy
    @favorate.destroy
    respond_with(@favorate)
  end

  private
    def set_favorate
      @favorate = Favorate.find(params[:id])
    end
end
