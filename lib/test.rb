require_relative "data_handle.rb"
handles = data

def element_predictable(list)
  print "vous voulais l'élément de quel index entre 1 et #{list.size}: "
  value_index = gets.chomp.to_i
  if value_index < 1 or value_index > list.size
    puts "veuillez entrée une valeur valide"
    element_predictable(list)
  else
  predictable_element = list.sample(random: Random.new(value_index-1)) # trouver une valeur selon son index
  puts "L'élément à l'index #{value_index} est #{predictable_element}"
  end
end

element_predictable(handles)

