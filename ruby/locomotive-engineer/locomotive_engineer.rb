# frozen_string_literal: true
class LocomotiveEngineer
  def self.generate_list_of_wagons(*list_of_wagons)
    list_of_wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, locomotive, *remaining_wagons = each_wagons_id
    [locomotive, *missing_wagons, *remaining_wagons, first, second]
  end

  def self.add_missing_stops(routing_hash, **variable_stops)
    { **routing_hash, stops: variable_stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
