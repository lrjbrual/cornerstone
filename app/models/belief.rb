class Belief < ApplicationRecord
  before_create :only_one_row

  private
  def only_one_row
    raise "You can create only one page info" if Belief.count > 0
  end
end
