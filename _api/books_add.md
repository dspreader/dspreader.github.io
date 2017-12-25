---
title: /books
position: 1.1
type: post
description: Create Book
right_code: |
  ~~~ json
  {
    "id": 3,
    "title": "The Book Thief",
    "score": 4.3,
    "dateAdded": "5/1/2015"
  }
  ~~~
  {: title="Response" }

  ~~~ json
  {
    "error": true,
    "message": "Invalid score"
  }
  ~~~
  {: title="Error" }
---
title : 
1.doTrade

~~~ javascript
function : [pos doTrade:30];[pos doCheckCard]
callback function :
-(void) onDoTradeResult: (DoTradeResult)result DecodeData:(NSDictionary*)decodeData;
sample result :
        if(result==DoTradeResult_MCR){
         result = "Card Swiped:
                   Format ID: 30
                   Masked PAN: 623568XXXXXXXXX9908
                   Expiry Date: 2601
                   Cardholder Name: 
                   PIN KSN: 00000332100300E0000E
                   Track KSN: 00000332100300E00002
                   Service Code: 220
                   Encrypted Track 1: 
                   Encrypted Track 2: 817D3936CBC58D42D53829142F63AEEC8DB77ABBA17FC32D
                   Encrypted Track 3: 
                   pinBlock: CEFBDCEAC0B025EB
                   encPAN:   "
        }
tips: the difference between api doTrade and doCheckCard:
      calling doCheck card , you don't have to input pin when doing swipe transaction.
~~~

