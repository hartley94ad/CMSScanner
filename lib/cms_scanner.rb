# Gems
require 'opt_parse_validator'
require 'typhoeus'
require 'nokogiri'
# Custom Libs
require 'cms_scanner/target'
require 'cms_scanner/browser'
require 'cms_scanner/version'
require 'cms_scanner/controllers'
require 'cms_scanner/formatters'

# Module
module CMSScanner
  # Scan
  class Scan
    def initialize
      controllers << Controller::Core.new
    end

    def controllers
      @controllers ||= Controllers.new
    end

    def run
      controllers.run
    end
  end
end
