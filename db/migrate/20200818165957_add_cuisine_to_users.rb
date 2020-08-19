class AddCuisineToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cuisine, :string
  end
end
