require 'rails_helper'

RSpec.describe "incomes/show", type: :view do
  before(:each) do
    @income = assign(:income, Income.create!(
      :subject => "Subject",
      :households => 1,
      :families => 2,
      :married-couples => 3,
      :nonfamily => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
