class Event < ApplicationRecord
  enum backgroundColor: { red: 0, blue: 1, green: 2, yellow: 3}
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validate :start_end_check

  def start_end_check
    errors.add(:end, "・日付を正しく入力してください。") unless self.start < self.end
  end
end
