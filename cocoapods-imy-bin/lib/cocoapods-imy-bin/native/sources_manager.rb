

require 'cocoapods'
require 'cocoapods-imy-bin/config/config'

module Pod
  class Source
    class Manager
      # 源码 source
      def code_source
        sources = []
        CBin.config.code_repo_url.each do |url|
          sources << source_with_name_or_url(url)
        end
        sources
      end

      # 二进制 source
      def binary_source
        sources = []
        CBin.config.binary_repo_url.each do |url|
          sources << source_with_name_or_url(url)
        end
        sources
      end
    end
  end
end
