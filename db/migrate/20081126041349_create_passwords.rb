class CreatePasswords < ActiveRecord::Migration
  def self.up
    create_table :passwords do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :passwords
  end
end
