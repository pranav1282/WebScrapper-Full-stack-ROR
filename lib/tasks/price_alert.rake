namespace :price_alert do
  desc 'Check Price alerts on existing records'
  task :check_price_amount => [:environment ] do
    puts "--------------Before---------------"
    PriceAlrertsService.new.call
    puts "--------------After---------------"
  end
end