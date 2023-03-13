require 'open-uri'
class PriceAlrertService
  def call(price_alert)
    puts "inside PriceAlrertService ----"
    url = price_alert.url
    selector = price_alert.selector
    descriptionselector = price_alert.descriptionselector

    puts "descriptionselector idhar"
    puts descriptionselector

    doc = Nokogiri::HTML(URI.open(url))

    current_amount = doc.css(selector).text.gsub("₹",'').to_i
    description = doc.css(descriptionselector).text.strip

    puts "description idhar"
    puts description

    price_alert.description = description
    price_alert.save
    puts "Price alert saved with description: #{price_alert.description}"
    if price_alert.trigger_amount > current_amount
      UserMailer.with(user: price_alert.user,price_alert: price_alert).price_alert.deliver_now
    end
  end
end