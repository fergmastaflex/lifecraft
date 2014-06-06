class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
    binding.pry
  end

  def create
    
    @campaign = Campaign.new(campaign_params)

    if @campaign.save
      redirect_to campaigns_path, notice: "Your campaign was created"
    else
      render action: 'new', alert: "Your campaign was not created"
    end
  end

  private

  def campaign_params
    params.require(:campaign).permit(
        :id, :title, :description
      )
  end
end
