class Entry < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  after_create :create_base_vote

  def up_votes
    self.votes.where('up_vote > 0').count
  end

  def down_votes
    self.votes.where('down_vote > 0').count
  end

  def create_base_vote
    Vote.create!(entry_id: self.id, up_vote: 1, down_vote: 0)
  end

end
