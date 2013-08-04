require 'spec_helper'

describe "spree/admins/show" do
  before(:each) do
    @spree_admin = assign(:spree_admin, stub_model(Spree::Admin::PropertyType,
      :name => "Name",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Show/)
  end
end
