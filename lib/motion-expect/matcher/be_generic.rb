module MotionExpect; module Matcher
  class BeGeneric < SingleMethod
    def initialize(method_name, *values)
      super("#{method_name}?", *values)
    end
  end
end; end