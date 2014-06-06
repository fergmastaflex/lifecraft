require 'rails_helper'

describe CampaignsController do 

  it 'loads index page' do
    get :index
    response.should render_template(:index)
  end

  it 'loads new page' do
    get :new
    response.should render_template(:new)
  end

end

