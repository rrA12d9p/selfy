class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
    	t.text :body, null: false
      t.timestamps null: false
    end
  end
end
