require 'rails_helper'

RSpec.describe "favorates/index", :type => :view do
  before(:each) do
    assign(:favorates, [
      Favorate.create!(
        :email => "Email",
        :artist => "Artist"
      ),
      Favorate.create!(
        :email => "Email",
        :artist => "Artist"
      )
    ])
  end

  it "renders a list of favorates" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
  end
end
