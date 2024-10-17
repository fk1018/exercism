#
# BirdCount
#
class BirdCount
  #
  # Returns count of birds that visited last week
  #
  # @return [Array<Integer>]
  #
  def self.last_week = [0, 2, 5, 3, 7, 8, 4]

  #
  # Initializes BirdCount
  #
  # @param [Array<Integer>] birds_per_day
  #
  def initialize(birds_per_day)
    unless birds_per_day.all? { |item| item.is_a?(Integer) }
      raise ArgumentError, "BirdCount.initialize - all elements in birds_per_day must be integers."
    end
    @birds_per_day = birds_per_day
  end

  #
  # Returns how many birds visited yesterday
  #
  # @return [Integer] Birds that visited yesterday
  #
  def yesterday
    unless @birds_per_day.length >= 2
      raise ArgumentError, "BirdCount#yesterday - @birds_per_day must have at least a length of 2"
    end
    @birds_per_day[-2]
  end

  #
  # Returns the sum of all birds
  #
  # @return [Integer] Sum of all birds
  #
  def total = @birds_per_day.sum

  #
  # Returns count of days where 5 or more birds visited
  #
  # @return [Integer] Number of busy days
  #
  def busy_days = @birds_per_day.select { |birds| birds >= 5 }.length

  #
  # Returns if there was a day where no birds visited
  #
  # @return [Boolean] Was there a day when no birds visited
  #
  def day_without_birds? = @birds_per_day.any? { |birds| birds === 0 }
end
