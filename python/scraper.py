"""
This scraper is to scrape the free-code-camp template files and
create a starter file for each directory to save me time of sending a "started: step **" commit.
"""

import urllib.request

url = 'https://www.freecodecamp.org/learn/2022/responsive-web-design/learn-basic-css-by-building-a-cafe-menu/step-39'

# Create a request object with a User-Agent header
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})

try:
    # Open the URL
    with urllib.request.urlopen(req) as response:
        html = response.read()
        # print(html.decode('utf-8'))  # Decode the byte response to string
except urllib.error.HTTPError as e:
    print(f'HTTP Error: {e.code} - {e.reason}')
except urllib.error.URLError as e:
    print('The server could not be found!')
except Exception as e:
    print(f'Error: {str(e)}')
else:
    print('It Worked!')