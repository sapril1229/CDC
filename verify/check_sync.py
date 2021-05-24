#!/usr/bin/env python3

def search_string_in_file(file_name, string_to_search):
    line_number = 0
    list_of_results = []
    with open(file_name, 'r') as read_obj:
        for line in read_obj:
            line_number += 1
            if string_to_search in line:
                list_of_results.append((line_number, line.rstrip()))
    return list_of_results

def main():
    print('Check the number of matched lines in the output file.\nIt should equal NUM_PACKETS*NUM_CYCLES from the test bench')
    matched_lines = search_string_in_file('output/syncd_inpt_pkt.hex', '0102030405060708090a0b0c0d0e0f550102030405060708090a0b0c0d0e0faa0102030405060708090a')
    print('Total Matched lines : ', len(matched_lines))

if __name__ == '__main__':
    main()
