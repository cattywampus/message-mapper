class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.references :baseline, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
