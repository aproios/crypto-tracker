class CreateCryptosTrackers < ActiveRecord::Migration
  def change
    create_table :cryptos_trackers do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :cost_per
      t.decimal :amount_owned

      t.timestamps null: false
    end
    add_index :cryptos_trackers, :user_id
  end
end
