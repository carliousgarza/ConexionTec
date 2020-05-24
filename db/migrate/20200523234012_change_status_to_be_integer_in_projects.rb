class ChangeStatusToBeIntegerInProjects < ActiveRecord::Migration[6.0]
  def up
    change_column :projects, :status, :integer
  end

  def down
    change_column :projects, :status, :string
  end
end
