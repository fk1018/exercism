# frozen_string_literal: true
# BI
class BoutiqueInventory
  CHEAP_PRICE = 30

  # @param items [Array<Hash{Symbol => String, Symbol => Integer, Symbol => Hash{String => Integer}}>]
  #   An array of items, where each item is a hash with keys :name, :price, and :quantity_by_size.
  def initialize(items)
    @items = items
  end

  # @return [Array<String>] the names of the items, sorted alphabetically.
  def item_names
    items.map { |item| item[:name] }.sort
  end

  # @return [Array<Hash>] the items that are priced below CHEAP_PRICE.
  def cheap
    items.select { |item| item[:price] < CHEAP_PRICE }
  end

  # @return [Array<Hash>] the items that are out of stock.
  def out_of_stock
    items.select { |item| item[:quantity_by_size].empty? }
  end

  # @param name [String] the name of the item.
  # @return [Hash{String => Integer}] the stock quantities for the specified item.
  def stock_for_item(name)
    items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  # @return [Integer] the total stock count for all items.
  def total_stock
    items.map { |item| item[:quantity_by_size].values }.flatten.sum
  end

  private

  attr_reader :items
end
