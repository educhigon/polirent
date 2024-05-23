class PoliticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_politician, only: [:show]
  before_action :new_politician, only: [:create, :edit]


  def index
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
    @politician.user_id = current_user.id
    if @politician.save
      redirect_to politicians_path(@politician)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @politician.update(politician_params)
      redirect_to politician_path(@politician)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @politician.destroy
    redirect_to politician_path, status: :see_other
  end

  def owned
    @politicians = Politician.where(user_id: current_user.id)
  end

private

def politician_params
  params.require(:politician).permit(:name, :location, :cost, :description, :photo )
end

  def set_politician
    @politician = Politician.find(params[:id])
  end

  def new_politician
    @politician = Politician.new(politician_params)
  end
end
