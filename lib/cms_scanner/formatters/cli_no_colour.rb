module CMSScanner
  module Formatter
    # CLI No Colour Formatter
    class CliNoColour < Cli
      # Override to get the cli views
      def format
        'cli'
      end

      def colorize(text, color_code)
        text
      end
    end
  end
end
