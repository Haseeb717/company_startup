class HomeController < ApplicationController
  def index
  	@popular_products = Product.all.where('backers_total >?',0).order(:backers_total).limit(3)
  	@recommended_products = Product.all.limit(3)
  end
end
