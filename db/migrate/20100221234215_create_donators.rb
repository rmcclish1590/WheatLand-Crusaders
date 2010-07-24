class CreateDonators < ActiveRecord::Migration
  def self.up
    create_table :donators do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :donators
  end
end
