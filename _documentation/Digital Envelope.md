---
title: Digital Envelope
position: 2
right_code: |
  ~~~ javascript
  https://gitlab.com/dspread
  ~~~
 
---


```
A single BDK (base derived key) able to facilitate 500,000 devices by deriving same amount IPEK keys. Therefore, by having several BDKs you may able to support millions of devices which able to use a unique key for every instance they are going to encrypt data.
You can store your BDKs in an industrial used HSM (Hardware Secure Module). Then send IPEK (Initial Key) file to vendor for devices key injection, also you can inject and update keys on your own app with DSPREAD SDK API, which is using digital envelope to inject keys into terminal 

1.First factory will inject the encryption key from Client/Bank, then inject these keys into QPOS

2.After above step, QPOS is capable of protecting card and transaction data by encrypting them. Then send the encrypted card to acquirer. 

3.Finally, acquirer will receive and decrypt card and transaction data, then send card data to issuer bank for confirm.

Bellow will illustrate expected key files and format for production by factory 

Production – key exchange Stage

Before massive production, Customer will be required to send bellow keys to DSPREAD for device initial keys. 
Let’s say production 1000 device on 2017/02/27. so POSID: xxxxxxxxx17022700001~1000
a)Customers send customer public key (PEM format) and IPEK key files to vendor

```


