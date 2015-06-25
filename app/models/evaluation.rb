class Evaluation < ActiveRecord::Base
  belongs_to :user
  belongs_to :basic_unit
end
