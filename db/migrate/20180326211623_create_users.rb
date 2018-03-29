class CreateUsers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :users do |t|
      t.string "email", :limit => 50, :null => false
      t.column "password", :string, :limit => 30, :null => false
      t.column :created_at, :timestamp
    end
  end
  def self.down
    drop_table :users
  end
end
