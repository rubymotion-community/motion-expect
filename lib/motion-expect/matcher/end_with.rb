module MotionExpect; module Matcher
  class EndWith
    def initialize(end_string)
      @end_string = end_string
    end

    def matches?(subject)
      subject[-@end_string.size..-1] == @end_string
    end

    def fail!(subject, negated)
      raise FailedExpectation.new(FailMessageRenderer.message_for_end_with(negated, subject, @end_string))
    end
  end
end; end