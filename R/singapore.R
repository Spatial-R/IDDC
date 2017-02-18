
############################ search the Singapore'public data  ##############################
################# url: https://data.gov.sg/dataset/weekly-infectious-bulletin-cases #########

get.data.singapore <-
  download.file("http://www.moh.gov.sg/content/dam/moh_web/Statistics/Healthcare_Institution_Statistics/More_Statistics.../Weekly%20infectious%20bulletin_cases.xls",
                "singapore.xls")


url <- "http://nidss.cdc.gov.tw/en/SingleDisease.aspx?dc=1&dt=4&disease=0412"

url <- "http://nidss.cdc.gov.tw/en/Nidss_Report_Timer.aspx?dt=4&dc=1&disease=0412&d=3&i=&s=determined_cnt&RK=W&Y1=2015&Y2=2016&MW1=01&MW2=40&Area=0&City=0&Town=0&Q=N"
