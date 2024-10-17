# frozen_string_literal: true

# CalculatorValidations Module
module CalculatorValidations
  def self.validate_operands(first_operand, second_operand)
    return if first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    raise ArgumentError, 'Operand must be an integer!'
  end

  def self.validate_operation(operation, allowed_operations)
    return if allowed_operations.include?(operation)

    raise SimpleCalculator::UnsupportedOperation, 'Operation must be +, /, or *.'
  end

  def self.validate_non_zero_division(_first_operand, second_operand, operation)
    return unless operation == '/' && second_operand == 0

    raise ZeroDivisionError, 'Division by zero is not allowed.'
  end
end

# SimpleCalculator Class
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    # Validate inputs
    CalculatorValidations.validate_operation(operation, ALLOWED_OPERATIONS)
    CalculatorValidations.validate_operands(first_operand, second_operand)
    CalculatorValidations.validate_non_zero_division(first_operand, second_operand, operation)

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  rescue ZeroDivisionError => e
    e.message
  end
end
