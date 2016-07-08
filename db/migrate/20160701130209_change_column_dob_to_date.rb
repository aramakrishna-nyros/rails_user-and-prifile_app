class ChangeColumnDobToDate < ActiveRecord::Migration
  def change
  	change_column :profiles, :dob, :date
  end
end
