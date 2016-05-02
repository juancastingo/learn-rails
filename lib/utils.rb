class Utils
  def self.myLog(logging)
    Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG: \033[0m " + logging
  end
end