def size(list)
size_of_list = list.size
puts "longueur de la liste de handles : #{size_of_list}"
end

def element_min(list)
longer_list_min = list.min_by(&:size) # trouver element le plus petit 
puts "le handle le plus petit est #{longer_list_min}"
end

def element_max(list)
longer_list_max = list.max_by(&:size) # trouver element le plus grand
puts "le handle le plus long est #{longer_list_max}"
end

def element_predictable(list)
  print "vous voulais l'élément de quel index entre 1 et #{list.size} : "
  value_index = gets.chomp.to_i
  if value_index < 1 || value_index > list.size
    puts "veuillez entrée une valeur valide"
    element_predictable(list)
  else
  element_predictable = list[value_index-1] # trouver une valeur selon son index
  puts "le handle a l'index #{value_index} est #{element_predictable}"
  end
end

def find_index(list)
    print " vous voulais trouver l'index de :"
  names = gets.chomp
  index_of_list = list.find_index("@"+names)
  puts "l'index de l'element #{names} est #{index_of_list+1}"
end


def length_element(list)
  print "vous voulais les element de quel taille : "
  value_index = gets.chomp.to_i
  array_of_list_length = []
  list.each do |list_temp| # boucle each
    list_whiout_at = list_temp.gsub("@", "") # .sub remplacer un caractere par un autre
    if list_whiout_at.length == 3
      array_of_list_length << list
    end
  end
  puts "il y a #{array_of_list_length.length} elemnt avec #{value_index} caractere"
end

def start_upcase(list)
  list_whith_upcase = []
  list.each do |list_temp| # boucle each
    list_whiout_at = list_temp.gsub("@", "")
    if list_whiout_at.start_with?(/[A-Z]/)
      list_whith_upcase << list
    end
  end
  puts "vous avais #{list_whith_upcase.length} element qui comment par une majuscules"
end

def start_downcase(list)
  list_whith_upcase = []
  list.each do |list_temp| # boucle each
    list_whiout_at = list_temp.gsub("@", "")
    if list_whiout_at.start_with?(/[a-z]/)
      list_whith_upcase << list
    end
  end
  puts "vous avais #{list_whith_upcase.length} element qui comment par une miniscules"
end

def sort_by_length(list)
  list_sort_length = list.sort_by { |word| word.length }
  puts list_sort_length
  puts "j'espere que tu regrette d'avoir fait  =)"
end


def group_words_by_length(list)
  list_sort_length = list.sort_by { |word| word.length }
  list_count = Hash.new ( "list_count" )
  for list in list_sort_length do
    key = "carac"+list.length.to_s
    unless list_count.key?(key)
      list_count[key] = []  
    end
    list_count["carac"+list.length.to_s] << list
  end
  puts list_count["carac6"]
end


def menu_first_end(list)
  puts "Choisissez une option :"
  puts "1. Option un"
  puts "2. Option deux"
  user_choice = gets.chomp

  case user_choice
  when "1"
    first_list = list.first
    puts "le premier element de la liste de handles #{first_list}"
  when "2"
    last_list = list.last
    puts "le dernier element de la liste de handles #{last_list}"
  else
    puts "Choix invalide. Veuillez choisir entre 1 et 2."
    menu
  end
end