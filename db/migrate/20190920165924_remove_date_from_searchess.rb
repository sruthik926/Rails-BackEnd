class RemoveDateFromSearchess < ActiveRecord::Migration[5.2]
  def change
    remove_column :searches, :date, :date
  end
end
