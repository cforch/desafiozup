class WarrantyPage
  include Capybara::DSL

  def without_extended_warranty
    if page.has_css?("body > div.sticky-footer-wrapper > div > div > div.warranty-container")
      page.execute_script "window.scrollBy(0,200)"
      continue_bt = find(:css, ".price-warranty__btn--continue")
      continue_bt.click
    else
      sleep 3
    end
  end
end
