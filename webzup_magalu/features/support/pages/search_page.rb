class SearchPage
  include Capybara::DSL

  def listed_products?
    sleep 5
    page.execute_script "window.scrollBy(0,100)"
    return page.has_css?("body > div.wrapper-main > div.wrapper-middle.central-wrapper > div.nm-container > div.nm-main-search-container > div.nm-search-results-container")
  end

  def select_first_product
    find(:css, ".nm-product-item", match: :first).click
  end

  def order_best_sellers
    # Normally, I use select 'Option', from: 'Select box', but in this case i could not.
    bestseller_opt = find(:xpath, "/html/body/div[2]/div[3]/div[1]/div[6]/div[2]/div[4]/div[2]/select/option[7]")
    bestseller_opt.click
    sleep 5
  end

  def order_top_rated
    toprated_opt = find(:xpath, "/html/body/div[2]/div[3]/div[1]/div[6]/div[2]/div[4]/div[2]/select/option[6]")
    toprated_opt.click
    sleep 5
  end

  def filter_price_upto_140
    filter_upto_140 = find(:xpath, "//*[@id='neemu-search-filters']/li[2]/ul/li[1]/a")
    filter_upto_140.click
  end
end
