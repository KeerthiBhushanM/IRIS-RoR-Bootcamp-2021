require_relative 'armstrong'
require 'minitest/autorun'

class ArmstrongTest < Minitest::Test

  def test_armstrong_number
    test_cases = [
      {
        n: -5,
        result: false
      },
      {
        n: 153,
        result: true
      },
      {
        n: 371,
        result: true
      },
      {
        n: 8208,
        result: true
      },
    ]

    test_cases.each do |test_case|
      assert_equal test_case[:result], armstrong_number(test_case[:n]),
        "armstrong_number(n: #{test_case[:n]}) is #{test_case[:result]}"
    end
  end

  
end
