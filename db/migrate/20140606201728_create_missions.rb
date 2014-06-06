class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
    	t.string :name
    	t.string :description
    	
    	
      t.timestamps
    end
  end
end
