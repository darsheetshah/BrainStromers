class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirm_passwrod, :string
  end
end
