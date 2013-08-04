require 'spec_helper'

describe "spree/admins/index" do
  before(:each) do
    assign(:spree_admin_property_types, [
      stub_model(Spree::Admin::PropertyType,
        :name => "Name",
        :show => "Show"
      ),
      stub_model(Spree::Admin::PropertyType,
        :name => "Name",
        :show => "Show"
      )
    ])
  end

  it "renders a list of spree/admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
