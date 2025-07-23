
import sys

def main():
    pass
    # TODO: arg check

    file1 = sys.argv[1]
    file2 = sys.argv[2]

    file1_words = set()
    # read words from file1
    with open(file1) as f1:
        for line in f1:
            file1_words.add(line[0:-1])
            # print(line, end="")

    # print(file1_words)
    # read words from file2
    file2_words = set()
    # read words from file1
    with open(file2) as f2:
        for line in f2:
            file2_words.add(line[0:-1])
    # print(file2_words)
    # print difference
    print(file1_words - file2_words)
    for diff_elem in sorted(file1_words - file2_words, reverse=True):
        print(diff_elem)

if __name__ == "__main__":
    main()