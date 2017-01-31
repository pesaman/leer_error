# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string) 
   @string = string; @string.reverse!; @string.swapcase!; @string.gsub!(/[aeio]/,"*")
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 
 #sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
def max_letter_frequency_per_word(sentence)
  words_array = words_longer_than(sentence.split, 3)
   count_e = letter_per_word(words_array, "e")
   numbers_larger_than(count_e)
      
end

def words_longer_than(array,num)
  array.select{|letters| letters.length > num}
  
end

def letter_per_word(array,letter)
 nums = array.map {|w| w.count(letter)}

end

def numbers_larger_than(num_array)
num_array.max 
end
# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"
p max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5