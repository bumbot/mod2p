class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :github_profile
      t.string :cohort_name
      t.date :cohort_start
      
      t.timestamps
    end
  end
end
