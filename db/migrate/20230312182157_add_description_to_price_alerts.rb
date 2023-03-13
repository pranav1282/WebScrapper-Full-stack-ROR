class AddDescriptionToPriceAlerts < ActiveRecord::Migration[7.0]
  def change
    add_column :price_alerts, :description, :string
  end
end
