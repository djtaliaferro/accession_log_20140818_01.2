class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.datetime :date_of_birth
      t.references :accession_log, index: true

      t.timestamps
    end
  end
end
