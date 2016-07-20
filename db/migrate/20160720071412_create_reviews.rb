class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :details
      t.decimal :actual_wage
      t.decimal :fair_wage
      t.datetime :when
      t.references :jobsite, index: true

      t.timestamps
    end
  end
end
