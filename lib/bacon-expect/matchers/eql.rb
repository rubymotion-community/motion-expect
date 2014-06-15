module BaconExpect; module Matcher
  class Eql
    def initialize(value)
      @value = value
    end

    def matches?(subject)
      subject.eql?(@value)
    end

    def fail!(subject)
      raise FailedExpectation.new("#{subject} expected to be eql? to #{@value}")
    end
  end
end; end