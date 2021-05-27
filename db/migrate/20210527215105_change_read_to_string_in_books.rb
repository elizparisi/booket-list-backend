class ChangeReadToStringInBooks < ActiveRecord::Migration[6.0]
  def change

    change_column :books, :read, :string
  end
end
