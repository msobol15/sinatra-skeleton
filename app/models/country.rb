class CreateCountries < ActiveRecord::Migration 

  def change 
    create_table : countries do |t|
      t.string  :name
      t.string  :captial 
      t.string  :contient 
      t.integer :population 
      # created at and updated at coloms created with t.timestamps 
      t.timestamps
    end
  end

end
