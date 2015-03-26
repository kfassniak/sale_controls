require "rails_helper"

RSpec.describe SaleItensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sale_itens").to route_to("sale_itens#index")
    end

    it "routes to #new" do
      expect(:get => "/sale_itens/new").to route_to("sale_itens#new")
    end

    it "routes to #show" do
      expect(:get => "/sale_itens/1").to route_to("sale_itens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sale_itens/1/edit").to route_to("sale_itens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sale_itens").to route_to("sale_itens#create")
    end

    it "routes to #update" do
      expect(:put => "/sale_itens/1").to route_to("sale_itens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sale_itens/1").to route_to("sale_itens#destroy", :id => "1")
    end

  end
end
