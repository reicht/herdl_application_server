class Entry < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def up_votes
    self.votes.where('up_vote > 0').count
  end

  def down_votes
    self.votes.where('down_vote > 0').count
  end

end
