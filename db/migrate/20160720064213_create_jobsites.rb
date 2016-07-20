class CreateJobsites < ActiveRecord::Migration
  def change
    create_table :jobsites do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
