# Python algorithm for finding most used letters in a string and printing them
def find_most_used_letter(string):
    letter_count = {}

    for letter in string:

        if letter_count.has_key(letter):
            letter_count[letter] += 1
        else:
            letter_count[letter] = 1

    most_used_letter = []
    most_used_letter_value = 0

    for letter in letter_count:
        if letter_count[letter] > most_used_letter_value:
            most_used_letter_value = (letter_count[letter])
            most_used_letter.append(letter)
            print most_used_letter