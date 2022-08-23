#!/bin/bash
# https://gist.github.com/tobym/8592e5326a94ef53f1ce

function print_random_word {
  # The dictionary file. It contains one word per line.
  dictionary=/usr/share/dict/words

  # The number of words in the dictionary file.
  num_words_in_dictionary=$(wc -l $dictionary | awk '{print $1}')

  # A random number corresponding to a line in the dictionary file.
  # This takes random data from /dev/random, converts it to an unsigned integer, and scales it by the number of words available.
  random_line_number=$(($(cat /dev/random | od -N3 -An -D) % $num_words_in_dictionary))

  # Prints the word corresponding to the random line calculated above.
  awk "NR == $random_line_number" $dictionary
}

print_random_word
