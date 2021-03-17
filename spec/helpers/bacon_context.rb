class Bacon::Context
  def expect_failure(fail_message = "", &block)
    expect(&block).to raise_error(MotionExpect::FailedExpectation, fail_message)
  end
end