class ChangeProductPriceColumnType < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.change :price, :decimal, :precision => 10, :scale => 2
    end
  end
end
