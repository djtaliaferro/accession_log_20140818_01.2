class Patient < ActiveRecord::Base
  belongs_to :accession_log
  validates_formatting_of :ssn, using: :ssn
end
