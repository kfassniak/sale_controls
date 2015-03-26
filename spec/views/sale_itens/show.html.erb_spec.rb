require 'rails_helper'

RSpec.describe "sale_itens/show", type: :view do
  before(:each) do
    @sale_iten = assign(:sale_iten, SaleIten.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
