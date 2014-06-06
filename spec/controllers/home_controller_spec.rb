require 'rails_helper'

describe HomeController do 

  it 'loads home page' do
    get :index
    response.should render_template(:index)
  end

end

