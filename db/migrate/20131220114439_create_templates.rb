class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.string :name
      t.string :something

      t.timestamps
    end
  end
end
