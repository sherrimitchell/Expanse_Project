class CreateDataBreaches < ActiveRecord::Migration[5.2]
  def change
    create_table :data_breaches do |t|
      t.string :number
      t.string :name_of_covered_entity
      t.string :state
      t.string :business_associate_involved
      t.string :individuals_affected
      t.string :date_of_breach
      t.string :type_of_breach
      t.string :location_of_breached_information
      t.string :date_posted_or_updated
      t.text :summary
      t.string :breach_start
      t.string :breach_end
      t.string :year

      t.timestamps
    end
  end
end
