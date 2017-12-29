---
title: MKSK
position: 1.1
type: void
description: Get Device Info.
right_code: |
  ~~~ json
  {
    result :"set masterkey success";
  }
  ~~~
  {: title="Response" }

  ~~~ json
---

set Master Key

function:
```objc
NSString *pik = @"89EEF94D28AA2DC189EEF94D28AA2DC1";//111111111111111111111111
NSString *pikCheck = @"82E13665B4624DF5";

pik = @"F679786E2411E3DEF679786E2411E3DE";//33333333333333333333333333333
pikCheck = @"ADC67D8473BF2F06";
[pos setMasterKey:pik checkValue:pikCheck keyIndex:keyIndex];
```
callback function :
```objc
-(void) onReturnSetMasterKeyResult: (BOOL)isSuccess;
```



