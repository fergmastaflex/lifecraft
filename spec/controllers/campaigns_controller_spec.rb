require 'spec_helper'

describe CampaignsController do 
  before(:each) do
    campaign = {}
    @new_campaign = Campaign.new
    @campaign = double(Campaign)
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

  it 'redirect after save' do
    post :create, campaign: {title:'text', description: 'text'}
    response.should redirect_to campaigns_path
  end

  it 'renders new if fail' do
    Campaign.any_instance.stub(:valid?).and_return false
    post :create, campaign: {foo: 'bar'}
    response.should render_template(:new)
  end
end

