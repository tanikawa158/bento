class RenameSpellMissToUser < ActiveRecord::Migration
  def up
    rename_column(:Users, :campany_id, :company_id)
  end

  def down
    rename_column(:Users, :company_id, :campany_id)
  end
end
