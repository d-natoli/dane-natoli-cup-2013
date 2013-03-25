class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.attachment :picture
      t.timestamps
    end
  end
end
