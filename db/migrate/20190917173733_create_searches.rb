class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :searchterm
      t.date :date

      t.timestamps
    end
  end
end
