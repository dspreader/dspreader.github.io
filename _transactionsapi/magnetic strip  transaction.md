---
title: magnetic strip  transaction
position: 1.3
type: get
description: Result of magnetic strip card transaction
right_code: |
  ~~~ json
  {
    "Card Swiped":
    "Format ID": 30
    "Masked PAN": "623568XXXXXXXXX9908"
    "Expiry Date": "2601"
    "Cardholder Name": 
    "PIN KSN": "00000332100300E0000E"
    "Track KSN": "00000332100300E00002"
    "Service Code": 220
    "Encrypted Track 1": 
    "Encrypted Track 2": "817D3936CBC58D42D53829142F63AEEC8DB77ABBA17FC32D"
    "Encrypted Track 3": 
    "pinBlock": "CEFBDCEAC0B025EB"
    "encPAN":   "
  }
  ~~~
  {: title="Response" }

  ~~~ json
  {
    "error": true,
    "message": "Book doesn't exist"
  }
  ~~~
  {: title="Error" }
---

function : [pos doTrade:30];[pos doCheckCard];

~~~ javascript
tips: the difference between api doTrade and doCheckCard:
calling doCheck card , you don't have to input pin when doing swipe transaction.
~~~
samples:
~~~ javascript
Magnetic Stripe Card Transaction
Result of magnetic stripe card transaction.
~~~
~~~ javascript
callback function :

-(void) onDoTradeResult: (DoTradeResult)result DecodeData:(NSDictionary*)decodeData;
~~~
