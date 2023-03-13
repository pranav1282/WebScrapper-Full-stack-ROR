class AddDescriptionSelectorToPriceAlerts < ActiveRecord::Migration[7.0]
  def change
    add_column :price_alerts, :descriptionselector, :string
  end
end
