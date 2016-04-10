class Vote < ActiveRecord::Base
  belongs_to :entry, counter_cache: true

end
