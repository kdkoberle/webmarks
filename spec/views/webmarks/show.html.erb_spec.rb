require 'spec_helper'

describe "webmarks/show" do
  before(:each) do
    @webmark = assign(:webmark, stub_model(Webmark,
      :url => "Url",
      :name => "Name",
      :date_saved => "Date Saved"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Name/)
    rendered.should match(/Date Saved/)
  end
end
