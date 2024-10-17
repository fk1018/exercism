=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
  def self.convert(num)
    rain_drops = ''
    rain_drops += 'Pling' if num % 3 == 0
    rain_drops += 'Plang' if num % 5 == 0
    rain_drops += 'Plong' if num % 7 == 0
    rain_drops.empty? ? num.to_s : rain_drops
  end
end