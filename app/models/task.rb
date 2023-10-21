class DateCompare < ActiveModel::Validator
    def validate(record)
        if record.end_day.to_s < record.start_day.to_s
            record.errors.add(:注意※, "終了日の日付は開始日以降を選択してください")
        end
    end
end

class Task < ApplicationRecord
    validates :title, presence: true, length:{maximum: 20}
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :description, presence: true, length:{maximum: 500}
    validates_with DateCompare
end