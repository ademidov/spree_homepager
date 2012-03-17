Spree::HomeController.class_eval do

  def index
    @products = Product.on_homepage.active
  end

end