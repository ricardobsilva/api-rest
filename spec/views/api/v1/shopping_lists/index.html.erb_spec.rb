require 'rails_helper'

RSpec.describe "api/v1s/index", type: :view do
  before(:each) do
    assign(:api_v1_shopping_lists, [
      Api::V1::ShoppingList.create!(),
      Api::V1::ShoppingList.create!()
    ])
  end

  it "renders a list of api/v1s" do
    render
  end
end
