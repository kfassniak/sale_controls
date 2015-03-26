require 'rails_helper'

RSpec.describe "sale_itens/index", type: :view do
  before(:each) do
    assign(:sale_itens, [
      SaleIten.create!(),
      SaleIten.create!()
    ])
  end

  it "renders a list of sale_itens" do
    render
  end
end
