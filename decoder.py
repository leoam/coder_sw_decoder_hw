from file_management import FileManagement
import sys
import collections
import re
import pprint

assembler_file_path = "c:/Users/arayal/Google Drive/Maestria/Tesis/Results/ARM/Simple DSP benchmark/mean_filter_opt_O0.s"
# Set this flag in True to increase the logging verbosity
debug_algorithm = False

class Decoder:
    def two_lines_fit_count(self, input_list, pattern):
        if debug_algorithm:
            print("The pattern to look for is ", pattern)
    
        match_positions = []
        idx = 0
        while idx < len(input_list) - 1:
            if input_list[idx] == pattern[0] and \
                input_list[idx + 1] == pattern[1]:
                match_positions.append(idx)
                idx += 2
            else:
                idx += 1
        
        if debug_algorithm:
            print("There was found the following matches:")
            pprint.pprint(match_positions)
        
        return len(match_positions), match_positions

    def sequitur_algorithm(self, original_list):
        conversion_table = {}
        idx = 0
        list_size = len(original_list)
        while idx < list_size - 1:
            pattern = [original_list[idx], original_list[idx + 1]]
            matches_number, match_positions = self.two_lines_fit_count(
                original_list, pattern)

            if debug_algorithm:
                print("Matches number {}".format(matches_number))

            # To perform a chance, the number of matches must be grater than 1
            if matches_number < 2:
                idx += 1
                continue

            # Perform the replacements according to the matches
            for position, i in zip(match_positions, range(len(match_positions))):
                if debug_algorithm:
                    print("Replacing {} with {}".format(
                        original_list[position], idx))

                # We will assign the iterator as unique identifier,
                # it means a replacement was done withing the list
                original_list[position - i] = idx

                # The list lenght should decrease by one every time a line is
                # removed. This is why a -i is present in the index, because
                # the original index are based on the original list (without
                # lines removed)
                del original_list[position + 1 - i]
            
            # Assign to the conversion table the new pattern that was replaced
            conversion_table[idx] = pattern

            # Sice a replacement was performed, decrease the list size
            list_size -= matches_number
            
            # Increase the loop iterator
            idx += 1

            if debug_algorithm:
                print("Original list:")
                pprint.pprint(original_list)

        return original_list, conversion_table


def main():
    # Get and prepare the input file
    file_manager = FileManagement()
    file = file_manager.input_file_get(assembler_file_path)
    assembler_list = file_manager.file_list_get(file)
    assembler_list = file_manager.remove_whitespaces(assembler_list)
    assembler_list_original = assembler_list.copy()
    #print(*assembler_list, sep = "\n") 
    #file_manager.file_print(file)
    file_manager.input_file_close(file)

    #print(assembler_list)
    #input()
    decoder = Decoder()
    output_list, pattern = decoder.sequitur_algorithm(assembler_list)
    pprint.pprint(output_list)
    pprint.pprint(pattern)

    # Get the compression rates
    original_size = len(assembler_list_original)
    compressed_size = len(output_list)
    for i in pattern:
                compressed_size += len(pattern[i])

    compression_rate = original_size / compressed_size
    #compression_rate = compressed_size / original_size
    space_saving = (1 - compressed_size / original_size) * 100

    # Print out the results
    print("Original size: ", original_size)
    print("Compressed size: ", compressed_size)
    print("Compression rate ", compression_rate)
    print("Space saving {} %".format(space_saving))

main()
