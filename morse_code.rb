def decode_char(char)
  morse_converter = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', ' ' => ' '
  }
  return morse_converter[char]
end

def decode_word(word)
  word_split = word.split(' ')
  array = word_split.map do |i|
    decode_char(i)
  end
  return array.join
end

def decode_sentence(phrase)
  phrase_split = phrase.split('   ')
  array = phrase_split.map do |word|
    decode_word(word)
  end
  return array.join(' ')
end
