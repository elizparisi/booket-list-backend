class AddListIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :list, null: false, foreign_key: true
  end
end
