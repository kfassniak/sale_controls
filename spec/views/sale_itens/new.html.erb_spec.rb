require 'rails_helper'

RSpec.describe "sale_itens/new", type: :view do
  before(:each) do
    assign(:sale_iten, SaleIten.new())
  end

  it "renders new sale_iten form" do
    render

    assert_select "form[action=?][method=?]", sale_itens_path, "post" do
    end
  end
end
