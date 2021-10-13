---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "CYGNSS"
summary: "CYClone Global Navigation Satellite System"
authors: []
tags:
- C
- Flight Software
- Inactive

weight: 0
categories: []
date: 2016-12-01

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""

links:
- name: 'NASA Website'
  icon: 'space-shuttle'
  icon_pack: fas
  url: "https://www.nasa.gov/cygnss"

---
While employed an SwRI in San Antonio, TX, I was one of the main developers for
CYGNSS, a NASA contract awarded to SwRI. The purpose of the CYGNSS mission was
to improve the accuracy of hurricane forcasting (both in terms of intensity and
projected path) by catching reflected GPS signals off waves in hurricanes as
they formed and moved, and from this data compute wave height, windspeed, and
direction--crucial components in determining hurricane trajectory and projected
strength.

We developed the flight software which flew onboard each of the 8 satellites in
the constellation as they orbited the earth around the equator. I contributed
the bootstrap, system software, and much of the science data processing modules
for the 8 satellite constellation.
