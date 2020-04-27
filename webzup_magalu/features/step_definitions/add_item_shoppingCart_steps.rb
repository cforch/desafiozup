Given("access magazine luiza homepage") do
  @home.access_magalu
end

When("search a product") do
  @home.search_product
end

Then("it must be a list of products found") do
  expect(@search.listed_products?).to be true
end

And("select first product") do
  @search.select_first_product
end

And("select to add in Shopping Cart") do
  @product.add_shopping_cart
end

And("select to continue without extended warranty") do
  @continue.without_extended_warranty
end

Then("product must be in Shopping Cart.") do
  expect(@shopping.validate_product).to include("Cadeira")
end

And("order by best sellers") do
  @search.order_best_sellers
end

And("order by top rated") do
  @search.order_top_rated
end

And("filter price up to 140 R$") do
  @search.filter_price_upto_140
end
