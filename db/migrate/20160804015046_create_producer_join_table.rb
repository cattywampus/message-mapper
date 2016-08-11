class CreateProducerJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :producers, id: false do |t|
      t.references :message, foreign_key: true, index: true
      t.references :application, foreign_key: true, index: true
    end
  end
end
