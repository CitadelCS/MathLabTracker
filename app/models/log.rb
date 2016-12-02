class Log < ActiveRecord::Base
    
  def self.search(cwid)
        log.where(cwid: cwid).take
  end

end
