class CreateProyects < ActiveRecord::Migration[5.2]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.string :status

      t.timestamps
    end
  end
end
