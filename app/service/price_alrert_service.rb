require 'open-uri'
class PriceAlrertService
  def call(price_alert)
    url = price_alert.url
    selector = price_alert.selector
    doc = Nokogiri::HTML(URI.open(url))
    doc.css(selector)
    current_amount = doc.css(selector).text.gsub("₹",'').to_i
    if price_alert.trigger_amount > current_amount
      puts "Sending email ........................"
    end
  end
end

