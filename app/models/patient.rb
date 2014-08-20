class Patient < ActiveRecord::Base
  belongs_to :accession_log
end
