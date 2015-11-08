json.array!(@incomes) do |income|
  json.extract! income, :id, :subject, :households, :families, :married-couples, :nonfamily
  json.url income_url(income, format: :json)
end
