class PoliticiansController < ApplicationController

  def index
    @politicans = Politician.all
  end

end
