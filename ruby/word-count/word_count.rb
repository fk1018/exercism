=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
  attr_reader :word_count
  def initialize(phrase)
    @word_count = phrase.downcase.scan(/\b\w+'?\w*\b/).group_by(&:itself).transform_values(&:count)
  end
end