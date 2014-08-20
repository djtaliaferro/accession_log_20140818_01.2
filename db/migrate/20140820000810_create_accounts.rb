class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :prefix
      t.string :company_name
      t.references :accession_log, index: true

      t.timestamps
    end
  end
end
