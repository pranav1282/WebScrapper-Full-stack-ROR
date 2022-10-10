class CreatePriceAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :price_alerts do |t|
      t.string :url
      t.text :selector
      t.decimal :trigger_amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
