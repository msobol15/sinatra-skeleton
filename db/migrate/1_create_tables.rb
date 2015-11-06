class CreateTables < ActiveRecord:: Migration 
  
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password 
      t.timestamps
    end

    create_table :contacts do |t|
      t.string  :first_name 
      t.string  :last_name 
      t.string  :email 
      t.string  :company 
      t.string  :source 
      t.timestamps
    end

    create_table :pages do |t|
      t.string  :page_name
      t.string  :page_url
      t.string  :page_id 
      t.string  :page_visitor_count 
      t.timestamps
    end

  end
  
end
