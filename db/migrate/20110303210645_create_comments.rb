class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|

      t.timestamps
	  t.text :body
	  t.integer :article_id
    end
  end

  def self.down
    drop_table :comments
  end
end
