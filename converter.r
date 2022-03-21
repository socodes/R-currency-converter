library(httr)
library(jsonlite)

usd <- "https://free.currconv.com/api/v7/convert?q=USD_TRY&compact=ultra&apiKey=fb46a2778c4e079f7be5"
eur <- "https://free.currconv.com/api/v7/convert?q=EUR_TRY&compact=ultra&apiKey=fb46a2778c4e079f7be5"

print("1) USD to try")
print("2) EUR to TRY")
select = readline()
select= as.integer(select)
print(select)

if(select == 1) {
  res = GET(usd)
  arr = fromJSON(rawToChar(res$content))
  print("Current USD to TRY currency: ",arr$USD_TRY)
}else if(select==2){
  res = GET(eur)
  arr = fromJSON(rawToChar(res$content))
  print("Current EUR to TRY currency: ",arr$EUR_TRY)
}

