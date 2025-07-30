import argparse
from bs4 import BeautifulSoup
import requests
import collections

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--frequency', action='store_true', help='print tags by frequency')
    parser.add_argument("url", help="url to fetch")
    args = parser.parse_args()

    resp = requests.get(args.url)
    # print(resp.text)

    soup = BeautifulSoup(resp.text, 'html5lib')
    # print(soup.prettify())

    tags = (soup.find_all())
    
    # tag_names = []
    # for tag in tags:
    #     tag_names.append(tag.name)

    # list comprehension
    tag_names = [tag.name for tag in tags]
    
    tag_count = collections.Counter(tag_names)

    for tag in sorted(tag_count):
        print(f"{tag} : {tag_count[tag]}")



if __name__ == "__main__":
    main()