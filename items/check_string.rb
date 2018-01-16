module Check
  def self.check_string(string)
    /\A\d+\z/ === string
  end
end
