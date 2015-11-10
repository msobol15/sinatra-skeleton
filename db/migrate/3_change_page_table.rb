class ChangePageTable < ActiveRecord::Migration

  def change 
    rename_column :pages, :page_id, :unbounce_page_id
  end

end