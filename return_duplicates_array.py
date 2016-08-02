# A function that accepts an array and returns an array of distinct values of duplicates

def return_duplicates(array):
	duplicates = set()
	duplicates_list = []
	for item in array:
		distinct_length = len(duplicates)
		duplicates.add(item)
		if len(duplicates) == distinct_length and item not in duplicates_list:
			duplicates_list.append(item)

	return duplicates_list


array_with_duplicates = [2, 3, 3, 4, 7, 4, 8, 5, 'egg', 'egg', 'egg']
print return_duplicates(array_with_duplicates)
