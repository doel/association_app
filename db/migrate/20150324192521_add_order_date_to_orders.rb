class AddOrderDateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_date, :timestamp
  end
end
