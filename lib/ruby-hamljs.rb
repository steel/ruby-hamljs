require "ruby-hamljs/version"
require 'tilt'

module Hamljs
  class Template < ::Tilt::HamlTemplate
    def evaluate(scope, locals, &block)
      haml_code = super(scope, locals, &block)
      haml_code = haml_code.gsub(/\\/,"\\\\").gsub(/\"/,"\\\\\"").gsub(/\n/,"\\n")
      "\"#{haml_code}\""
    end
  end 
end