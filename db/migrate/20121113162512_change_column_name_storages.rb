class ChangeColumnNameStorages < ActiveRecord::Migration
  def up
    rename_column :storages, :type, :tanktype
  end

  def down
  end
end
