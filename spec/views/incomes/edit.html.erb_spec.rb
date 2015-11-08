require 'rails_helper'

RSpec.describe "incomes/edit", type: :view do
  before(:each) do
    @income = assign(:income, Income.create!(
      :subject => "MyString",
      :households => 1,
      :families => 1,
      :married-couples => 1,
      :nonfamily => 1
    ))
  end

  it "renders the edit income form" do
    render

    assert_select "form[action=?][method=?]", income_path(@income), "post" do

      assert_select "input#income_subject[name=?]", "income[subject]"

      assert_select "input#income_households[name=?]", "income[households]"

      assert_select "input#income_families[name=?]", "income[families]"

      assert_select "input#income_married-couples[name=?]", "income[married-couples]"

      assert_select "input#income_nonfamily[name=?]", "income[nonfamily]"
    end
  end
end
