class PoliticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_politician, only: [:show]
  before_action :new_politician, only: [:create]


  def index
    @politician = Politician.new
    @roles = %w[sexy nice corrupt]
    if params[:query].present?
      @politicians = Politician.search(params[:query])
    else
      @politicians = Politician.all
    end
  end

  def new
    @politician = Politician.new
  end

  def create
    @politician = Politician.new(politician_params)
    @politician.user = current_user

    if @politician.save
      redirect_to politician_path(@politician), notice: 'Politician was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
    # raise
    @politician = Politician.find(params[:id])
  end

  def update
    # raise
    @politician = Politician.find(params[:id])
    if @politician.update(politician_params)
      redirect_to politician_path(@politician)
    else
      render :new, status: 422
    end
    # if @politician.update(politician_params)
    #   redirect_to politician_path(@politician)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def destroy
    @politician = Politician.find(params[:id])
    @politician.destroy
    redirect_to my_politicians_path
    # success?
    # redirect_to politician_path, status: :see_other
  end

  def owned
    @politicians = Politician.where(user_id: current_user.id)
  end

private

  def politician_params
    params.require(:politician).permit(:name, :location, :cost, :description, :photo, :tags)
  end

  def set_politician
    @politician = Politician.find(params[:id])
  end

  def new_politician
    @politician = Politician.new(politician_params)
  end
end
