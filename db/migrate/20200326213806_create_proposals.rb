class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.string :notes
      t.boolean :active

      t.timestamps
    end
  end
end
