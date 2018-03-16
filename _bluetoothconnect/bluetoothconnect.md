---
title: BlueConnect
position: 1
---


## 1.scan:

TheBTDeviceFinder have implemented the method of scanning the bluetooth, controller need comply with the BluetoothDelegate2Mode protocol,in this function,create a instance of BTDeviceFinder,to detect the state of bluetooth,Call scanning method.

```objc
-(void)scanBluetooth{
BTDeviceFinder  *bt = [BTDeviceFinder new];
NSInteger delay = 0;

if(is2ModeBluetooth){

[bt setBluetoothDelegate2Mode:self];

if ([bt getCBCentralManagerState] == CBCentralManagerStateUnknown) {

[self sleepMs:20];

if([bt getCBCentralManagerState]!= CBCentralManagerStatePoweredOn) {

mAlertView = [[UIAlertView new]
initWithTitle:@"pls open bluetooth"
message:@""
 delegate:self
 cancelButtonTitle:@"Confirm"
 otherButtonTitles:nil,
nil ];

[mAlertView show];

if(delay++==10){
return;
}
}
}
// Can get devices list
[bt scanQPos2Mode:scanBluetoothTime];
}
```

## 2.binding:

In QPOSService impelement  the API of connectBluetooth,in  the function QPOSService sets the protocol,controllers should  follow the protocol of QPOSServiceListener.

```objc
-(void)initQposs{

QPOSService    *mQPOSService = [QPOSService sharedInstance];
[mQPOSService setDelegate:self];
[mQPOSService setQueue:nil];
[mQPOSService setPosType:PosType_BLUETOOTH_2mode];
}
```

## 3.connect

Create a intance of  QPOSService, QPOSService connectbluetooth  through bluename.

```objc
- (void)connectionPOS:(NSString *)bluetoothAddress{
[self initQposs];
QPOSService *mQPOSService =  [QPOSService new];
[mQPOSService connectBT:bluetoothAddress];
}
```





