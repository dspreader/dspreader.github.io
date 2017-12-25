---
title: /books/:id
position: 1.3
type: get
description: Get Book
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
    "message": "Book doesn't exist"
  }
  ~~~
  {: title="Error" }
---
title : 
1.get qpos id

~~~ javascript
function : [pos getQPosId];
callback function :
         -(void) onQposIdResult: (NSDictionary*)posId;
sample result :
              "27003009117051600470
               psamId:3730303030343730
               merchantId:
               vendorCode:
               deviceNumber:
               psamNo:  "
~~~
2.get qpos info
~~~ javascript
function :[pos getQposInfo];
callback function :
         -(void) onQposInfoResult: (NSDictionary*)posInfoData;
sample result :
               "Bootloader Version: 3.1
                Firmware Version: 3.58.3.46
                Hardware Version: A27
                Battery Percentage: 0%
                Charge: false
                USB: false
                Track 1 Supported: true
                Track 2 Supported: true
                Track 3 Supported: false
                updateWorkKeyFlag: false"
~~~
