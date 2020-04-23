class ProductPage
  include Capybara::DSL

  def add_shopping_cart
    add_product_bt = find(:css, ".button__buy-product-detail")
    add_product_bt.click
  end
end
