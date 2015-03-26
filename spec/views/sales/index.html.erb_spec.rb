require 'rails_helper'

RSpec.describe "sales/index", type: :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        :customer_name => "Customer Name",
        :string, => "String,",
        :merchant_address, => "Merchant Address,",
        :merchant_name => "Merchant Name"
      ),
      Sale.create!(
        :customer_name => "Customer Name",
        :string, => "String,",
        :merchant_address, => "Merchant Address,",
        :merchant_name => "Merchant Name"
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "String,".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Address,".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Name".to_s, :count => 2
  end
end
