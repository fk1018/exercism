# frozen_string_literal: true

require 'ostruct'
# BoutiqueInventory
class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map do |item|
      OpenStruct.new(price: item[:price], name: item[:name], quantity_by_size: item[:quantity_by_size])
    end
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    items.sum { _1.quantity_by_size.values.sum }
  end
end
