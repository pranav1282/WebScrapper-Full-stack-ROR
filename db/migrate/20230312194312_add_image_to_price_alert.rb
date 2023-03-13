class AddImageToPriceAlert < ActiveRecord::Migration[7.0]
  def change
    add_column :price_alerts, :image, :string
  end
end
