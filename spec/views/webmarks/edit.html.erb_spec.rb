require 'spec_helper'

describe "webmarks/edit" do
  before(:each) do
    @webmark = assign(:webmark, stub_model(Webmark,
      :url => "MyString",
      :name => "MyString",
      :date_saved => "MyString"
    ))
  end

  it "renders the edit webmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => webmarks_path(@webmark), :method => "post" do
      assert_select "input#webmark_url", :name => "webmark[url]"
      assert_select "input#webmark_name", :name => "webmark[name]"
      assert_select "input#webmark_date_saved", :name => "webmark[date_saved]"
    end
  end
end
