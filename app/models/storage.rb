class Storage < ActiveRecord::Base
  belongs_to :client
  attr_accessible :cap, :direction, :drainnear, :fillprocedures, :leakdetect, :leakdetect_yes, :loc, :material, :overfillprot, :overfillprot_yes, :potentialfail, :potentialrate, :potentialrelease, :throughput, :type
end
