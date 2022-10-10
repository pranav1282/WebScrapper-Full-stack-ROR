class PriceAlrertsService
  def call
    puts "Inside PriceAlrertsService"
    PriceAlert.all.each do |price_alert|
      puts "Inside PriceAlrertsService each #{price_alert.id}"
     PriceAlrertService.new.call(price_alert)
    end
  end
end

