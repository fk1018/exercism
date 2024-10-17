# frozen_string_literal: true

# ResistorColorDuo
class ResistorColorDuo
  BANDS = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }.freeze

  def self.value(array_of_colors)
    "#{BANDS[array_of_colors[0]]}#{BANDS[array_of_colors[1]]}".to_i
  end
end
