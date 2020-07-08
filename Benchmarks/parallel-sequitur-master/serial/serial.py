import sys
import collections
import re

"""
abracadabraarbadacarba

@3@c@4@@3@@6@@4@ac@6@a', '3': 'abra', '4': 'ad', '6': 'arb'

abracadabraarbadacarba

"""
#input_string = "abracadabraarbadacarba"
input_string = ["a","b","r","a","c","a","d","a","b","r","a","a","r","b","a","d","a","c","a","r","b","a"]

# Set this flag in True to increase the logging verbosity
debug_algorithm = False

def rule_utility(rules_so_far):
    for rule in [a for a in rules_so_far.keys() if a != '0']:
        # count how many times each rule besides the main string is used
        count = 0
        other_keys = [a for a in rules_so_far.keys() if rule != a]
        for key in other_keys:
            count += rules_so_far[key].count(rule)
        # if rule is only used once, consolidate
        if count < 2:
            for key in other_keys:
                rules_so_far[key] = rules_so_far[key].replace('@'+rule+'@', rules_so_far[rule])
            del rules_so_far[rule]
            return False, rules_so_far
    return True, rules_so_far

def last_two_symbols(input_str):
    # if the input string is less than 2 characters long, just output
    if len(input_str) < 2:
        return '', input_str

    # make sure last symbol isn't a rule
    place_holder = -1
    if input_str[-1] != '@':
        last_symbol = input_str[-1]
    else:
        # if it is, find the other end of rule
        place_holder = -2
        while input_str[place_holder] != '@':
            place_holder -= 1
        last_symbol = input_str[place_holder:]
    # repeat for second to last symbol
    place_holder2 = place_holder - 1
    if input_str[place_holder2] != '@':
        penultimate_symbol = input_str[place_holder2:place_holder]
    else:
        place_holder2 -= 1
        while input_str[place_holder2] != '@':
            place_holder2 -= 1
        penultimate_symbol = input_str[place_holder2:place_holder]
    return penultimate_symbol, last_symbol

def all_occurrences(digram, search_string):
    return [(a.start(), a.end()) for a in list(re.finditer(digram, search_string))]

def non_overlap(list_of_ranges, target_range):
    t1, t2 = target_range
    overlapping_ranges = []
    for x in list_of_ranges:
        a,b = x
        if not (list(set(range(a,b)) & set(range(t1,t2))) != []):
            overlapping_ranges.append(x)
    return overlapping_ranges
            
def sequitur_algorithm():
    num_rules = 0
    rules = {}
    rules['0'] = ''
    digram_bool = False
    rule_bool = False
    digram_index = []

    rules_so_far={}
    rules_so_far['0'] = ''
    test = rules_so_far['0']

    for i in range(len(input_string)):
        import ipdb; ipdb.set_trace() #noqa
        rules_so_far['0'] = rules_so_far['0'] + input_string[i]
        penult_symbol, last_symbol = last_two_symbols(rules_so_far['0'])
        last_digram = penult_symbol + last_symbol
        # determine if new digram is repeated elsewhere and repetitions do not overlap
        total_occurrences = all_occurrences(last_digram, rules_so_far['0'])
        other_occurrences = total_occurrences[:-1]
        last_range = total_occurrences[-1]
        string_occurrences = non_overlap(other_occurrences, last_range)
        all_rules = [a for a in rules_so_far.keys() if  '0' != a]
        
        # build rule_occurrences
        rule_occurrences = []
        for x in all_rules:
            if last_digram in rules_so_far[x]:
                if rules_so_far[x] == last_digram:
                    rule_occurrences.append((x,True))
                else:
                    rule_occurrences.append((x,False))

        # Only print debug information if the debug flag is True
        if debug_algorithm:            
            print("rule occurrences")
            print (rule_occurrences)
            print("string occurrences")
            print(string_occurrences)

            if (rule_occurrences == []) and (string_occurrences == []):
                print("Skipping")

        # if the new digram is repeated elsewhere and nonoverlapping
        if (rule_occurrences != []) or (string_occurrences != []):
            for x in rule_occurrences:
                rule_num, entire_bool = x
                # if this occurrence is a complete rule, enforce rule
                if entire_bool:
                    # replace new digram with corresponding rule
                    rules_so_far['0'] = rules_so_far['0'].replace(last_digram, '@'+rule_num+'@')
                    rule_utility_bool = False
                    while not rule_utility_bool:
                        rule_utility_bool, rules_so_far = rule_utility(rules_so_far)                
                else:
                    # otherwise create new rule and replace inside other rule
                    num_rules += 1
                    rules_so_far[str(num_rules)] = last_digram
                    rules_so_far[rule_num] = rules_so_far[rule_num].replace(last_digram, '@'+str(num_rules)+'@')
                    rule_utility_bool = False
                    while not rule_utility_bool:
                        rule_utility_bool, rules_so_far = rule_utility(rules_so_far)                   
            # if digram repeats in string, create new rule and enforce
            for x in string_occurrences:
                num_rules += 1
                rules_so_far[str(num_rules)] = last_digram
                rules_so_far['0'] = rules_so_far['0'].replace(last_digram, '@'+str(num_rules)+'@')
                rule_utility_bool = False
                while not rule_utility_bool:
                    rule_utility_bool, rules_so_far = rule_utility(rules_so_far)
    
    if debug_algorithm:
        print(last_digram)
    
    return rules_so_far

output_dictionary = sequitur_algorithm()
print(output_dictionary)
