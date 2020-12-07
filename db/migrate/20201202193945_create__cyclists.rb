class CreateCyclists < ActiveRecord::Migration[5.2]
  def change
    create_table :cyclists do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :neighborhood
    end
  end
end
