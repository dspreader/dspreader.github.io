---
title: MKSK
position: 1.1
type: void
description: Key management - MKSK
right_code: |
  ~~~ json
  {
    set master key result :"set masterkey success"
    update work key result: (Enum UpdateInformationResult)
  }
  ~~~
  {: title="Response" }

  ~~~ json
  
---

Set Master Key

function:
```objc
NSString *pik = @"89EEF94D28AA2DC189EEF94D28AA2DC1";//111111111111111111111111
NSString *pikCheck = @"82E13665B4624DF5";

[pos setMasterKey:pik checkValue:pikCheck keyIndex:keyIndex];
```
callback function :
```objc
-(void) onReturnSetMasterKeyResult: (BOOL)isSuccess;
```
Update Work Key
function
```objc
NSString * pik = @"89EEF94D28AA2DC189EEF94D28AA2DC1";
NSString * pikCheck = @"82E13665B4624DF5";

pik = @"89EEF94D28AA2DC189EEF94D28AA2DC1";
pikCheck = @"82E13665B4624DF5";

NSString * trk = @"89EEF94D28AA2DC189EEF94D28AA2DC1";
NSString * trkCheck = @"82E13665B4624DF5";

NSString * mak = @"89EEF94D28AA2DC189EEF94D28AA2DC1";
NSString * makCheck = @"82E13665B4624DF5";
[pos udpateWorkKey:pik pinKeyCheck:pikCheck trackKey:trk trackKeyCheck:trkCheck macKey:mak macKeyCheck:makCheck keyIndex:keyIndex];
```
callback function :
```objc
-(void) onRequestUpdateWorkKeyResult:(UpdateInformationResult)updateInformationResult;
```




