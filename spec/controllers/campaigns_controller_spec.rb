require 'rails_helper'

describe CampaignsController do 

  it 'loads index page' do
    get :index
    response.should render_template(:index)
  end

end

