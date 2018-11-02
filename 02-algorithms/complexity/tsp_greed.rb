def travelling_salesman_heuristic(current_city, neighbors)
  neighbor_cities = current_city.neighbors
  nearest_neighbor = neighbor_cities.first
  path = []

  neighbor_cities.each do |current_neighbor|
    #make a city class, make each city a class instance,
    #give each instance an attribute called "visited",
    #& track which cities that I haven't been to
    if current_neighbor.distance < nearest_neighbor.distance
      nearest_neighbor = current_neighbor
    end
    nearest_neighbor = neighbor_cities.next
  end
  path.push(nearest_neighbor)
  travelling_salesman_heuristic(nearest_neighbor, neighbors)
  return path

  #repeat at every city stop
end
