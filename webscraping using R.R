library('rvest')
url <- 'https://www.thehindu.com/news/'
webpage <- read_html(url)
nav_html <- html_nodes(webpage,'.nav-link')
nav_data <- html_text(nav_html)
head(nav_data)

nav_data<-gsub("\n","",nav_data)


head(nav_data)

#a , .ud-popper-open
heading_html <- html_nodes(webpage,'h3')
heading_data <- html_text(heading_html)
head(heading_data)
heading_data<-gsub("\n","",heading_data)
head(heading_data)

navbar_html <- html_nodes(webpage,'.navbar-inverse')
navbar_data <- html_text(navbar_html)
head(navbar_data)
navbar_data<-gsub("\n"," ",navbar_data)
head(navbar_data)

ndtvnews_df<-data.frame(Navigation = nav_data, Heading=heading_data, Navigationbar= navbar_data )
str(ndtvnews_df)