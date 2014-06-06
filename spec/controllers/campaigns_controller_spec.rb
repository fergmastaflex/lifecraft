require 'rails_helper'

describe CampaignsController do 
  before do
    @new_campaign = Campaign.new
  end

  it 'loads index page' do
    get :index
    response.should render_template(:index)
  end

  it 'loads new page' do
    get :new
    response.should render_template(:new)
  end

  it 'creates new campaign for creation' do
    get :new
    assigns(:campaign).should be_an_instance_of Campaign
  end

end

