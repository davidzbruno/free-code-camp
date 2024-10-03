"""
This scraper is to scrape the free-code-camp templates files and create a starter file for each directory to save me time of sending a "started: step **" commit.
"""
from urllib.request import urlopen

html = urlopen('https://www.freecodecamp.org/learn/2022/responsive-web-design/learn-basic-css-by-building-a-cafe-menu/step-39')
print(html.read())