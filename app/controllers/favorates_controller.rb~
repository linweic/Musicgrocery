class FavoratesController < ApplicationController
  before_filter :set_favorate, only: [:show, :edit, :update, :destroy]
   	
  respond_to :html

  def index

       if current_customer
	     @email = current_customer.email
	     @favorates = Favorate.all(:conditions => ["email = :email", { :email => @email}])
       else
          redirect_to new_customer_session_path, notice: 'You are not logged in.'
       end
	
	respond_with(@favorates)
  end

  def show
    respond_with(@favorate)
  end

  def new
    #@favorate = current_customer.email.build	
    @favorate = Favorate.new
    respond_with(@favorate)
  end

  def edit
  end

  def create
    @favorate = Favorate.new(params[:favorate])
    if current_customer.email == @favorate.email 	
	    @favorate.save
	    respond_with(@favorate)
    else
	    redirect_to new_customer_session_path, notice: 'New User Account?'
    end
	
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
