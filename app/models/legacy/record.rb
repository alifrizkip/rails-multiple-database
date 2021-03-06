module Legacy
  class Record < ActiveRecord::Base
    self.abstract_class = true
  
    connects_to database: { writing: :legacy, reading: :legacy }
  end
end

