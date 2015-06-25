class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :rank
      t.belongs_to :user, index: true
      t.belongs_to :basic_unit, index: true

      t.timestamps null: false
    end
  end
end
