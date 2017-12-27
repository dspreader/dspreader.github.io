---
title: Q&A
position: 3
---

Q&A

~~~javascript
In which function we prompt the user to swipe or insert card ?

onRequestWaitingUser()
~~~
~~~javascript
After swipe or insert card, which callback function return the result ? 

onDoTradeResult()
~~~
~~~javascript
Which function provides the EMV transaction result? What is the format of its return result?

onRequestOnlineProcess()
TLV data/ Type Length Value
We can get all the tlv tags by analyzing the tlv data. 
~~~
~~~javascript
How to deal with the returned data of the bank?
Based on the returned data of bank, we can get to know whether we have the permission to continue the transaction. 
If the current transaction is permitted , we should send:
     mPos.sendOnlineProcessResult("8A023030"+"55 file data");

otherwise,we should send:
     mPos.sendOnlineProcessResult("8A023035"+"55 file data");
 
~~~

