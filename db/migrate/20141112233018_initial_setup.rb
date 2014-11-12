class InitialSetup < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :title, null: false
      t.text :content, null: false
      
      t.timestamps
    end
  end
end
