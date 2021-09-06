class Legacy::Todo < Legacy::Record
  validates :name, presence: true
  validates :detail, presence: true
end
