class PrimaryRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: :primary
end
