# frozen_string_literal: true

def decode_char(_char)
  morse_converter = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', ' ' => ' '
  }
  print (morse_converter[_char])
end

def decode_word(word)
  word_split = word.split
  array = word_split.map do |i|
    if i == '/'
      ' '
    else
      decode_char(i)
    end
  end
  array.join

end