class HomePage
  include Capybara::DSL

  def access_magalu
    visit "https://www.magazineluiza.com.br/"
  end

  def search_product
    find("#inpHeaderSearch").set("Cadeira")
    find("#btnHeaderSearch").click
  end
end
