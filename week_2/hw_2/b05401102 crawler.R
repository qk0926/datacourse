library(rvest)
i<-1
for(i in 1:10){
  page<-paste("https://www.amazon.com/s/ref=sr_pg_2?fst=as%3Aon&rh=n%3A230659011%2Cn%3A172282%2Cn%3A%21493964%2Cn%3A541966%2Cn%3A13896617011%2Ck%3Aacer&page=",i,"&bbn=230659011&keywords=acer&ie=UTF8&qid=1537412681",sep = "")
  res<-read_html(page)
  raw<-res %>% html_nodes("h2") %>% html_attr('data-attribute')
  assign(noquote(paste("page",i)),raw)
  i<-i+1
}


https://www.amazon.com/s/ref=sr_pg_2?fst=as%3Aon&rh=n%3A230659011%2Cn%3A172282%2Cn%3A%21493964%2Cn%3A541966%2Cn%3A13896617011%2Ck%3Aacer&page=2&bbn=230659011&keywords=acer&ie=UTF8&qid=1537412681
https://www.amazon.com/s/ref=sr_pg_3?fst=as%3Aon&rh=n%3A230659011%2Cn%3A172282%2Cn%3A%21493964%2Cn%3A541966%2Cn%3A13896617011%2Ck%3Aacer&page=3&bbn=230659011&keywords=acer&ie=UTF8&qid=1537414163