require 'rails_helper'

RSpec.describe "api/v1s/index", type: :view do
  before(:each) do
    assign(:api_v1_people, [
      Api::V1::Person.create!(),
      Api::V1::Person.create!()
    ])
  end

  it "renders a list of api/v1s" do
    render
  end
end
