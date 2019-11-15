class ChangeDataBreachesToBreaches < ActiveRecord::Migration[5.2]
  def change
  	rename_table :data_breaches, :breaches
  end
end
