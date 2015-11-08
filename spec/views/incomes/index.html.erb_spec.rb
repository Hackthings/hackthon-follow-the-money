require 'rails_helper'

RSpec.describe "incomes/index", type: :view do
  before(:each) do
    assign(:incomes, [
      Income.create!(
        :subject => "Subject",
        :households => 1,
        :families => 2,
        :married-couples => 3,
        :nonfamily => 4
      ),
      Income.create!(
        :subject => "Subject",
        :households => 1,
        :families => 2,
        :married-couples => 3,
        :nonfamily => 4
      )
    ])
  end

  it "renders a list of incomes" do
    render
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
