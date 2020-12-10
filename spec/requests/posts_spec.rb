require "rails_helper"

RSpec.describe "Posts list", :type => :request do

  context 'unauthenticated' do
    it "renders the index action" do
      get "/"
      expect(response).to render_template(:index)
    end

    it "does not show the delete link" do
      get "/"
      expect(response.body).to_not include('Delete')
    end

    it 'supports login' do
      get '/users/sign_in'
    end
  end

  context 'signed in' do
    
  end

end