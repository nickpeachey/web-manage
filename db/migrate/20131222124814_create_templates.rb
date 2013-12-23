class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.string :summary
      t.boolean :inprog
      t.date :started

      t.timestamps
    end
  end
end
