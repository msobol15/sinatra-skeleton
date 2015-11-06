class AddForeignKeys < ActiveRecord::Migration 

  def change
    change_table  :contacts do |t|
      t.references :page
    end
  end
end