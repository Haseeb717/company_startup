class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:title, :project, :funding_goal, :description, :categry, :facebook_url, :website)
    end
end

