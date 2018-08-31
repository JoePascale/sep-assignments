require_relative 'node'

def find_kevin_bacon(start)
  # Find the Baconator
  if start.name == "Kevin Bacon"
    #return the entire array?
    return film_actor_hash
  end

  #change this to a while
  film_actor_hash.each do |node|
    if #node is closer to end than start
      #come closer to kevin
    elsif @node.name == "Kevin Bacon"
      #return array that represents the path to Kevin Bacon
      return film_actor_hash
    else
      #continue traversing nodes
    end
  end

end

#film_actor_hash is a map of movies that that actor is in

tom_hanks = Node.new()
tom_hanks.name = "Tom Hanks"
tom_hanks.film_actor_hash = {
  "Apollo 13" => [Tom Hanks, Bill Paxton, Kevin Bacon, Gary Sinise],
  "Cast Away" => [1,2,3],
  "Forrest Gump" => [1,2,3]
}

bill_paxton = Node.new()
bill_paxton.name = "Bill Paxton"
bill_paxton.film_actor_hash = {
  "Titanic" => [Lori_Singer, John_Lithgow, Sarah_Jessica_Parker],
  "Twister" => [1,2,3],
  "Apollo 13" => [1,2,3]
}

kevin_bacon = Node.new()
kevin_bacon.name = "Kevin Bacon"
kevin_bacon.film_actor_hash = {
  "Footloose" => [john_lithgow, dianne_wiest, chris_penn, sarah_jessica_parker],
  "Tremors" => [1,2,3],
  "Animal House" => [1,2,3],
  "Wild Things" => [1,2,3]
}







kevin_bacon = Node.new()
kevin_bacon.name = "Kevin Bacon"
kevin_bacon.film_actor_hash = { "Footloose" => [john_lithgow, dianne_wiest,
  chris_penn, sarah_jessica_parker], "Tremors" => [1#node
    ,2,3] }


Kevin_Bacon.film_actor_hash['Footloose'] =
[Lori_Singer, John_Lithgow, Dianne_Wiest, Chris_Penn,
  Sarah_Jessica_Parker, …]
