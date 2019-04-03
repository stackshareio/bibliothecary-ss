require 'json'

module Bibliothecary
  module Parsers
    class Haxelib
      include Bibliothecary::Analyser

      def self.mapping
        {
          match_filename("haxelib.json") => {
            kind: 'manifest',
            parser: :parse_json_runtime_manifest
          }
        }
      end
    end
  end
end
