class LegacyRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: :legacy
end
