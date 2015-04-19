require 'rails_helper'

RSpec.describe "favorates/show", :type => :view do
  before(:each) do
    @favorate = assign(:favorate, Favorate.create!(
      :email => "Email",
      :artist => "Artist"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Artist/)
  end
end
