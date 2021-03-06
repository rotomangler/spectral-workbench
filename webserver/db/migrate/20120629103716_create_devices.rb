class CreateDevices < ActiveRecord::Migration
  def self.up

    create_table "devices" do |t|
      t.string   :name
      t.string   :description,              :limit => 100, :default => '', :null => false
      t.integer  :height
      t.integer  :width
      t.integer  :calibration_id
      t.integer  :user_id
      t.decimal  :range_start
      t.decimal  :range_end

      t.timestamps
    end
    add_index :users, :login, :unique => true
  end

  def self.down
    drop_table "devices"
  end
end
