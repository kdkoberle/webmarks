require 'spec_helper'

describe "webmarks/index" do
  before(:each) do
    assign(:webmarks, [
      stub_model(Webmark,
        :url => "Url",
        :name => "Name",
        :date_saved => "Date Saved"
      ),
      stub_model(Webmark,
        :url => "Url",
        :name => "Name",
        :date_saved => "Date Saved"
      )
    ])
  end

  it "renders a list of webmarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Date Saved".to_s, :count => 2
  end
end
