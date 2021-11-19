## Test webscraping
library(rvest)

url <- "https://www.bag.admin.ch/bag/en/home/krankheiten/ausbrueche-epidemien-pandemien/aktuelle-ausbrueche-epidemien/novel-cov/situation-schweiz-und-international.html"
url <- "https://ptds.samorso.ch/lectures/"

read_html(url) %>%
  html_table() %>%
  .[[1]]

library(dplyr)
library(pageviews)

top_articles("en.wikipedia",
             start = (Sys.Date())) %>%
  select(article, views) %>%
  top_n(10)

html_page <- minimal_html('
  <body>
    <h1>Webscraping with R</h1>
    <p> Basic experience with <a href="www.r-project.org">R</a> and
    familiarity with the <em>Tidyverse</em> is recommended.</p>
    <h2>Technologies</h2>
    <ol>
      <li>HTML: <em>Hypertext Markup Language</em></li>
      <li>CSS: <em>Cascading Style Sheets</em></li>
    </ol>
    <h2>Packages</h2>
    <ul>
      <a href="https://github.com/tidyverse/rvest"><li>rvest</li></a>
    </ul>
    <p><strong>Note</strong>:
    <em>rvest</em> is included in the <em>tidyverse</em></p>
  </body>')
