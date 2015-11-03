class CreateTables < ActiveRecord:: Migration 
  
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password 
      t.timestamps
    end

    create_table :contacts do |t|
      t.string  :firstname 
      t.string  :lastname 
      t.string  :email 
      t.string  :company 
      t.string  :source 
      t.timestamps
    end

    create_table :pages do |t|
      t.string  :pagename
      t.string  :pageurl
      t.string  :pageid 
      t.string  :pagevisitorcount 
      t.timestamps
    end

  end
  
end
