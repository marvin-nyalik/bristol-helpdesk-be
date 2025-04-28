class AddDefaultToUserStatus < ActiveRecord::Migration[8.0]
    def change
      change_column_default :users, :status, 'Active'
    end
end
