require 'rails_helper'

RSpec.describe "incomes/new", type: :view do
  before(:each) do
    assign(:income, Income.new(
      :subject => "MyString",
      :households => 1,
      :families => 1,
      :married-couples => 1,
      :nonfamily => 1
    ))
  end

  it "renders new income form" do
    render

    assert_select "form[action=?][method=?]", incomes_path, "post" do

      assert_select "input#income_subject[name=?]", "income[subject]"

      assert_select "input#income_households[name=?]", "income[households]"

      assert_select "input#income_families[name=?]", "income[families]"

      assert_select "input#income_married-couples[name=?]", "income[married-couples]"

      assert_select "input#income_nonfamily[name=?]", "income[nonfamily]"
    end
  end
end
