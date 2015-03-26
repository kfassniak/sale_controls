require 'rails_helper'

RSpec.describe "sale_itens/edit", type: :view do
  before(:each) do
    @sale_iten = assign(:sale_iten, SaleIten.create!())
  end

  it "renders the edit sale_iten form" do
    render

    assert_select "form[action=?][method=?]", sale_iten_path(@sale_iten), "post" do
    end
  end
end
