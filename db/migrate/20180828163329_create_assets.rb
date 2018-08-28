class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :symbol
      t.references :user, foreign_key: true
      t.decimal :cost_per
      t.decimal :amount_owned

      t.timestamps
    end
  end
end
