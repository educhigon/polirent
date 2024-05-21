class PoliticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @politicians = Politician.all
  end

  def new
    @politician = Politician.new
  end

  def create
    @politician = Politician.new(politician_params)
    @politician.user_id = current_user.id
    if @politician.save
      redirect_to politicians_path(@politician)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @politician = Politician.find(params[:id])
  end

  def edit
    @politician = Politician.new(politician_params)
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

end

private

def politician_params
  params.require(:politician).permit(:name, :location, :cost, :description)
end

def set_politician
  @politician = Politician.find(params[:id])
end
