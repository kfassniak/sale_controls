require 'rails_helper'

RSpec.describe "sales/show", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :customer_name => "Customer Name",
      :string, => "String,",
      :merchant_address, => "Merchant Address,",
      :merchant_name => "Merchant Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer Name/)
    expect(rendered).to match(/String,/)
    expect(rendered).to match(/Merchant Address,/)
    expect(rendered).to match(/Merchant Name/)
  end
end
