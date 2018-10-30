class CreateDones < ActiveRecord::Migration[5.2]
  def change
    create_table :dones do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :payed, default: false #probably not needed

      t.timestamps
    end
  end
end
