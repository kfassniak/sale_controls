require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      :customer_name => "MyString",
      :string, => "MyString",
      :merchant_address, => "MyString",
      :merchant_name => "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input#sale_customer_name[name=?]", "sale[customer_name]"

      assert_select "input#sale_string,[name=?]", "sale[string,]"

      assert_select "input#sale_merchant_address,[name=?]", "sale[merchant_address,]"

      assert_select "input#sale_merchant_name[name=?]", "sale[merchant_name]"
    end
  end
end
