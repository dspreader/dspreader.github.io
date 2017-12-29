---
title: getQposInfo
position: 1.1
type: void
description: get device info.
right_code: |
  ~~~ json
  {
      "Bootloader Version": 3.1,
      "Firmware Version": 3.58.3.46,
      "Hardware Version": A27,
      "Battery Percentage": 0%,
      "Charge": false,
      "USB": false,
      "Track 1 Supported": true,
      "Track 2 Supported": true,
      "Track 3 Supported": false,
      "updateWorkKeyFlag": false
  }
  ~~~
  {: title="Response" }

  ~~~ json
  ~~~
  {: title="Error" }
---

```objc
function :[pos getQposInfo];
```
```objc
callback function :
-(void) onQposInfoResult: (NSDictionary*)posInfoData;
```



