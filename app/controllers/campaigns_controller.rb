class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    
    @campaign = Campaign.new(filtered params )

    if @campaign.save
      redirect_to campaigns_path, notice: "Your campaign was created"
    else
      render action: 'new', alert: "Your campaign was not created"
    end
  end

  private

  def filtered(params)
    binding.pry
    params.require(:campaign).permit(
        :id, :title, :description
      )
  end
end
