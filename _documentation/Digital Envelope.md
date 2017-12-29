---
title: Digital Envelope
position: 2
right_code: |
  ~~~ javascript
  https://gitlab.com/dspread
  ~~~
  {: title="jQuery" }

  ~~~ bash
 
  ~~~
  {: title="Curl" }
---

### Overview on DUKPT

A single BDK (base derived key) able to facilitate 500,000 devices by deriving same amount IPEK keys. Therefore, by having several BDKs you may able to support millions of devices which able to use a unique key for every instance they are going to encrypt data.
You can store your BDKs in an industrial used HSM (Hardware Secure Module). Then send IPEK (Initial Key) file to vendor for devices key injection, also you can inject and update keys on your own app with DSPREAD SDK API, which is using digital envelope to inject keys into terminal 

1.First factory will inject the encryption key from Client/Bank, then inject these keys into QPOS

2.After above step, QPOS is capable of protecting card and transaction data by encrypting them. Then send the encrypted card to acquirer. 

3.Finally, acquirer will receive and decrypt card and transaction data, then send card data to issuer bank for confirm.


```java
@Override
if (errorState == Error.CMD_NOT_AVAILABLE) {
} else if (errorState == Error.TIMEOUT) {
} else if (errorState == Error.DEVICE_RESET) {
} else if (errorState == Error.UNKNOWN) {
} else if (errorState == Error.DEVICE_BUSY) {
} else if (errorState == Error.INPUT_OUT_OF_RANGE) {
} else if (errorState == Error.INPUT_INVALID_FORMAT) {
} else if (errorState == Error.INPUT_ZERO_VALUES) {
} else if (errorState == Error.INPUT_INVALID) {
} else if (errorState == Error.CASHBACK_NOT_SUPPORTED) {
} else if (errorState == Error.CRC_ERROR) {
} else if (errorState == Error.COMM_ERROR) {
} else if (errorState == Error.MAC_ERROR) {
} else if (errorState == Error.CMD_TIMEOUT) {
}
}
```


