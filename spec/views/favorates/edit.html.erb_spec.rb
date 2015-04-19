require 'rails_helper'

RSpec.describe "favorates/edit", :type => :view do
  before(:each) do
    @favorate = assign(:favorate, Favorate.create!(
      :email => "MyString",
      :artist => "MyString"
    ))
  end

  it "renders the edit favorate form" do
    render

    assert_select "form[action=?][method=?]", favorate_path(@favorate), "post" do

      assert_select "input#favorate_email[name=?]", "favorate[email]"

      assert_select "input#favorate_artist[name=?]", "favorate[artist]"
    end
  end
end
