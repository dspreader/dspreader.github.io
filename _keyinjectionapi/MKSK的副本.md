---
title: MKSK-UpdateWorkKey
position: 1.1
type: void
description: MKSK-update workKey
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

Update WorkKey

function
```objc
NSString * pik = @"89EEF94D28AA2DC189EEF94D28AA2DC1";
NSString * pikCheck = @"82E13665B4624DF5";

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




