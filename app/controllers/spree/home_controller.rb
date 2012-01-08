module Spree
  class HomeController < Spree::BaseController
    helper 'spree/products'
    
    def index
      @products = Product.on_homepage.active
    end
  end
end