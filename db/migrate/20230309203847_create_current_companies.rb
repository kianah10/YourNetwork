class CreateCurrentCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :current_companies do |t|

      t.timestamps
    end
  end
end
