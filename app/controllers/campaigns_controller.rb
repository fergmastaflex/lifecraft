class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campiagn = Campaign.new
  end
end
