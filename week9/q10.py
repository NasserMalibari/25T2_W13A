import argparse
import subprocess
import re
import collections


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--frequency', action='store_true', help='print tags by frequency')
    parser.add_argument("url", help="url to fetch")
    args = parser.parse_args()

    url = args.url

    proc = subprocess.run(f"wget -O- -q {url}", shell=True, capture_output=True, text=True)

    # print(proc.stdout)
    tags = re.findall(r"<\s*([a-zA-Z]+)", proc.stdout)
    # print(tags)

    tag_counter = collections.Counter(tags)
    # print(tag_counter)

    for tag in sorted(tag_counter):
        print(f"{tag} : {tag_counter[tag]}")

    # freq order
    # tag_counter.most_common()



if __name__ == "__main__":
    main()