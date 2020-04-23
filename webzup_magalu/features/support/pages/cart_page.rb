class CartPage
  include Capybara::DSL

  def validate_product
    return find(:css, ".BasketItemProduct-info-title").text
  end
end
