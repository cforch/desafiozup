class SearchPage
  include Capybara::DSL

  def listed_products?
    sleep 5
    page.execute_script "window.scrollBy(0,100)"
    return page.has_css?("div.nm-main-search-container > div.nm-search-results-container > ul")
  end

  def select_first_product
    #find(:css, ".nm-product-item", match: :first).click
    find(".nm-product-item:nth-child(1)").click
  end

  def order_best_sellers
    # Normally, I use select 'Option', from: 'Select box', but in this case i could not.
    # bestseller_opt = find(:xpath, "/html/body/div[2]/div[3]/div[1]/div[6]/div[2]/div[4]/div[2]/select/option[7]")
    # bestseller_opt.click
    find("option:nth-child(7)").click
    sleep 5
  end

  def order_top_rated
    # toprated_opt = find(:xpath, "/html/body/div[2]/div[3]/div[1]/div[6]/div[2]/div[4]/div[2]/select/option[6]")
    # toprated_opt.click
    find("option:nth-child(6)").click
    sleep 5
  end

  def filter_price_upto_140
    # filter_upto_140 = find(:xpath, "//*[@id='neemu-search-filters']/li[2]/ul/li[1]/a")
    # filter_upto_140.click
    find("li.neemu-filter.filter_preco > ul > li:nth-child(1)").click
  end
end

