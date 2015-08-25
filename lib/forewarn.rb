require "forewarn/version"

require "forewarn/config"
require "forewarn/reporters"
require "forewarn/values"
require "forewarn/sets_up_warnings"
require "forewarn/tears_down_warnings"

module Forewarn
  def self.start!
    SetsUpWarnings.new.set_up!
  end

  def self.stop!
    TearsDownWarnings.new.tear_down!
  end
end
