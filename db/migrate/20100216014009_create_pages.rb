class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
