class AddTitleToPriceAlerts < ActiveRecord::Migration[7.0]
  def change
    add_column :price_alerts, :title, :string
  end
end
