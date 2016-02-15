require 'spec_helper'

describe Api::V1::ItemsController, :type => :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.marketplace.v1" }

  describe "GET #show" do
    before(:each) do
      @item = FactoryGirl.create :item
      get :show, id: @item.id, format: :json
    end

    it "returns the information about a reporter on a hash" do
      item_response = JSON.parse(response.body, symbolize_names: true)
      expect(item_response[:email]).to eql @item.email
    end

    it { should respond_with 200 }
  end
end
