class ChangePageColumnType < ActiveRecord::Migration

  def change
    change_column :pages, :unbounce_page_id, :integer
  end
end 