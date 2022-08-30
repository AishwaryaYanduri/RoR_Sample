class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :fullname, nil:false
      t.string :email, nil:false
      t.string :company, nil:false
      t.string :mobile

      t.timestamps
    end
  end
end
