require 'rails_helper'

RSpec.describe "favorates/new", :type => :view do
  before(:each) do
    assign(:favorate, Favorate.new(
      :email => "MyString",
      :artist => "MyString"
    ))
  end

  it "renders new favorate form" do
    render

    assert_select "form[action=?][method=?]", favorates_path, "post" do

      assert_select "input#favorate_email[name=?]", "favorate[email]"

      assert_select "input#favorate_artist[name=?]", "favorate[artist]"
    end
  end
end
