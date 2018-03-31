class AddTypeToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :discount_type, :integer, :default => 1
  end
end
