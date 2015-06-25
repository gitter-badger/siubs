class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :user_name, null: false
    	t.boolean :user_active, default: true
    	t.references :evaluation

    	t.timestamps null: false
    end
  end
end
