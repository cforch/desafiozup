require "report_builder"

Before do
  @home = HomePage.new
  @search = SearchPage.new
  @product = ProductPage.new
  @continue = WarrantyPage.new
  @shopping = CartPage.new
end

After do
  temp_shot = page.save_screenshot("log/cart.png") # Save screenshot
  file_shot = File.open(temp_shot, "rb").read # read and return file
  final_shot = Base64.encode64(file_shot) # convert to binary
  embed(final_shot, "image/png", "Screenshot") # save in Report
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Magazine Luiza - Desafio ZUP - Caio Forchesatto"
    config.color = "indigo"
    config.compress_images = true
    config.additional_info = { "Report generated" => DateTime.now }
  end
  ReportBuilder.build_report
end
