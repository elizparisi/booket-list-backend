class AddListIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :belongs_to, :list
  end
end
