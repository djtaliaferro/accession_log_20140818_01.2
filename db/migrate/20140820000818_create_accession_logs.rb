class CreateAccessionLogs < ActiveRecord::Migration
  def change
    create_table :accession_logs do |t|
      t.datetime :date_received
      t.datetime :date_received_physicians_office
      t.references :user, index: true

      t.timestamps
    end
  end
end
