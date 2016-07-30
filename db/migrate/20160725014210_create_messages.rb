class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :msg_id
      t.text :description
      t.references :baseline, foreign_key: true

      t.timestamps
    end
  end
end
