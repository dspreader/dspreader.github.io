---
title: /books
position: 1.0
type: get
description: List all books
right_code: |
  ~~~ json
  [
    {
      "id": 1,
      "title": "The Hunger Games",
      "score": 4.5,
      "dateAdded": "12/12/2013"
    },
    {
      "id": 1,
      "title": "The Hunger Games",
      "score": 4.7,
      "dateAdded": "15/12/2013"
    },
  ]
  ~~~
  {: title="Response" }

  ~~~ json
  {
    "error": true,
    "message": "Invalid offset"
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
3.reset pos
~~~ javascript
function : 
          [pos asynResetPosStatusBlock:^(BOOL isSuccess, NSString *stateStr) {
                if (isSuccess) {
                self.textViewLog.text = stateStr;
                }
           }];
callback function :
          -(void)onAsyncResetPosStatus:(BOOL)isReset;
sample result :
         if (isReset) {
          self.textViewLog.text = @"reset qpos success";
         }else{
          self.textViewLog.text = @"reset pos fail";
          }
~~~
