class AddDefaultToAvatar < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :avatar, :string, default: "http://localhost:3000/profile.png"
  end
end
