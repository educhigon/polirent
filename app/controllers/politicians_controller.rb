class PoliticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @politicans = Politician.all
  end

end
