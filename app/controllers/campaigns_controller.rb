class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(params[:campaign])

    if @campaign.save
      redirect_to campaigns_path, notice: "Your campaign was created"
    else
      render action: 'new', alert: "Your campaign was not created"
    end
  end
end
