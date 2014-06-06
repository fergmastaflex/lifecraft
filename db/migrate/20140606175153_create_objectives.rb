class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
    	t.string :name
    	t.string :directive
    	t.datetime :start_date
    	t.datetime :end_date

      t.timestamps
    end
  end
end
