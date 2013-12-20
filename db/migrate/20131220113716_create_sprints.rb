class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :exp_end_date
      t.text :summary
      t.boolean :in_progress
      t.timestamps
    end
  end
end
