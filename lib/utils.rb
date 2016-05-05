class Utils
  def self.myLog(logging)
    Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG:  \033[32m" + logging + "\033[0m"
  end
end