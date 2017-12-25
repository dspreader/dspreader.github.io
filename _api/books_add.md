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
tips: the difference between api doTrade and doCheckCard:
calling doCheck card , you don't have to input pin when doing swipe transaction.
sample result :
~~~ javascript
when doing magnetic stripe card transaction:
callback function :-(void) onDoTradeResult: (DoTradeResult)result DecodeData:(NSDictionary*)decodeData;
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
~~~
~~~ javascript
when doing ICC (EMV) transaction:
callback function :-(void) onRequestTransactionResult: (TransactionResult)transactionResult;
    if (transactionResult==TransactionResult_APPROVED) {
        tlv = "5F20062020202020204F08A0000003330101015F24032601319F160F4243544553542031323334353637389F21031131089A031712259F02060000000000129F03060000000000009F34034203009F120A50424F432044454249549F0607A00000033301015F300202209F4E0F616263640000000000000000000000C40A623568FFFFFFFFF9908FC10A00000332100300E0000FC708E10E0671AEFA6657C00A00000332100300E0000EC28201780A28DD617E646523A530174D8036E0D59B1CB027E2C5655AA5708D6A9916657540D095BCEA4FB14AFB4B3F8512511FA83B4C9F54CB1683514FBD704A91FEFE91511F8467A35EF8260D64FDEBC17E2B4F72783D05B1F2AC8BBF0C1AE586EB212D481A88B8286F1076C1474170658F9647112CB1FBAC48201305C37ED3A90DD406AE8AAF2EB3340C27AB77A88CF64E8B3EDBDB504CB190213FC1E00F049A6D39404A1E64654C2882541617FE246A98D3AF42D87E3C1BD60515946D9CB336F566F085499AF6DC40F57D8AB0E618B1289A0D3407E4C0C73BBCB88FDA5CFBFFDFC2BFCB4A709DC0082BFAFC91145BFB8435384FC379A3629AF834B35A8CFB4A72D807FD09D846431D831AE86F39853532B2C3C90F0684AFD17AD1289EE82200C93D55CE19215175C11199512CBE04AF84C13ACEAFF865167F520267618BE0595C917C4701446FD96D8EDCA2977D1C13C6CC8E53B36FF19F79B6528FEF813B22FB7CCB2A374C877C1AF58DA51C80E6C6FFAD87202EDC51268DB6F4";
         transaction result = "Approved
                     Amount: $0.12" 
    }
~~~
~~~ javascript
when doing contactless EMV transaction:
callback function :-(void) onDoTradeResult: (DoTradeResult)result DecodeData:(NSDictionary*)decodeData;
if(result==DoTradeResult_NFC_OFFLINE || result == DoTradeResult_NFC_ONLINE){
    tlv = "Tap Card:
    Format ID: 30
    Masked PAN: 623568XXXXXXXXX9908
    Expiry Date: 2601
    Cardholder Name: 
    PIN KSN: 00000332100300E00010
    Track KSN: 00000332100300E00003
    Service Code: 
    Encrypted Track 1: 
    Encrypted Track 2: 881E250CA9273CD5312337F288BDCCB4353815CD97F2A49349D10DB4E0D32726
    Encrypted Track 3: 
    pinBlock: F3E581E6A904ECE2
    encPAN:";
    transaction result = "Approved
    Amount: $0.12" 
}
~~~
~~~

