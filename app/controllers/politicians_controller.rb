class PoliticiansController < ApplicationController

  def index
    user_signed_in? ? @politicans = Politician.all : @politicans = Politician.all
  end

end
