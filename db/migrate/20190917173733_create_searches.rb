class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :searchterm
      t.date :date

      t.timestamps
    end
  end
end



#searches table is created with searchterm property - date is removed from the updated versionß
