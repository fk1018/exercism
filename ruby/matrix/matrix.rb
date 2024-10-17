# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  ROW_SPLIT_PATTERN = "\n"
  COLUMN_SPLIT_PATTERN = " "
  def initialize(row_and_columns_str)# ["1 2\n3 4\n5 6"]
    @rows = row_and_columns_str.split(ROW_SPLIT_PATTERN).map { |row| row.split(COLUMN_SPLIT_PATTERN).map(&:to_i) }
  end

  def column(n)
    @rows.map { |row| row[n - 1] }
  end

  def row(n)
    @rows[n - 1]
  end
end
