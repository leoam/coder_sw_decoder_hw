
class FileManagement:
    def file_print(self, file):
        print("---------------------------")
        print("Printing input file")
        print("---------------------------")

        for line in file:
            print(line, end="")
            print("Holaaa")
    
    def remove_whitespaces(self, list):
        new_list = []
        for line in list:
            new_list.append(
                line.strip().replace(" ", "").replace("\t", " "))
        
        return new_list

    def input_file_get(self, assembler_file_path):
        return open(assembler_file_path, "r")

    def input_file_close(self, file):
        file.close()
    
    def file_list_get(self, file):
        return [a for a in file]

    def char_count(self, input):
        char_count = 0
        if isinstance(input, list):
            char_count = sum(len(str(i)) for i in input)
        elif isinstance(input, dict):
            for i in input:
                sublist = input[i]
                char_count += sum(len(str(j)) for j in sublist)
        else:
            print("Invalid input type")
            return -1

        return char_count
