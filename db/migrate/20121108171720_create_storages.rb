class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :type
      t.string :loc
      t.string :material
      t.string :throughput
      t.string :cap
      t.text :potentialfail
      t.integer :potentialrelease
      t.integer :potentialrate
      t.string :direction
      t.text :drainnear
      t.string :fillprocedures
      t.string :overfillprot
      t.text :overfillprot_yes
      t.string :leakdetect
      t.text :leakdetect_yes
      t.string :secondarycontain
      t.string :secondarycontain_type
      t.integer :secondarycontain_l
      t.integer :secondarycontain_w
      t.integer :secondarycontain_h
      t.integer :est_vol_remove
      t.string :spill_loc
      
      t.references :client
      t.timestamps
    end
    add_index :storages, :client_id
  end
end
