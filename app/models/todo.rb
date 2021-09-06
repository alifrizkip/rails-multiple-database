class Todo < PrimaryRecord
  validates :name, presence: true
  validates :detail, presence: true
end
