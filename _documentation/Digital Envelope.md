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





IPEK.TXT
NO
Field
Length
Description
1
KSN
14
This is first 14 digits of KSN that related to last 14 digits of POSID
2
Field separator
1
Comma “’, ” as field separator
3
IPEK
32
Encrypted IPEK under transmission key
4
Field separator
1
Comma “’, ” as field separator
5
KCV
16
IPEK key check value







Vendor will load the customer public key and IPEK into devices while manufacture. The public key will be used to verify customer authentication when update customer own keys.

PubKey.CSV
NO
Field
Length
Description
1
POS ID
20
POS ID corresponding to each device public key
2
Field separator
1
Comma “’, ” as field separator
3
PSAM ID
ID
Device PCB ID
4
Field separator
1
Comma “’,” as field separator
5
Public key
16
Each device public key 






Device public key is used to encrypt the keys when customer update their own keys so that device can decrypt with its inside device private key to verify the terminal authentication.











While at production stage, customer and vendor will exchange each other public key. Because RSA key (private/public key) should be one pair and matched. So it will be used to authenticate each both party identify. After exchange, Device and customer will possess the other party public key, which make secure RKI feasible, the theory is illustrated as bellow:

















Digital envelope implementation source code
Firstly, please download the source code by this link: https://mega.nz/#!1UlXiSxA!bH95hFaBvR9w50rVx67rc0ZdmU91jNFWh6jp-mnmLAE
Then import this project into eclipse, there are only 2 main file to interact- 
DukptKeys.java: this file only contains dukpt keys and device public key
Envelope.java: this file is used to implement digital envelope generation

DukptKeys.java 
public static String dukptGroup="00";	     // indicate update specific index group keys

// IPEK and KSN keys for dukpt 
public static String trackipek    ="93D67D62337B36F0D739663CABEEFD3C";
public static String emvipek     ="93D67D62337B36F0D739663CABEEFD3C";
public static String pinipek       ="93D67D62337B36F0D739663CABEEFD3C";

public static String trackksn     = "FFFF9876543210E00000";
public static String emvksn      = "FFFF9876543210E00000";
public static String pinksn        = "FFFF9876543210E00000";
//IPEK should be encrypted under tmk for security, so above IPEK is not in plaintext
public static String tmk            ="5F8B2B8818966C5CD4CC393AF9FC7722";
//RSA_public_key is used to generate digital envelope 
public static String RSA_public_key="84F5F1C1CF03D7A9FE7BBA5E8C276B……”


Add your own server private key into “keys” folder in the project, then reference it in Envelope.java

Envelope.java 
//reference your private key in Envelope.java file
senderRsa.loadPrivateKey(new FileInputStream("keys/rsa_private_pkcs8.pem"));

Finally, run envelope.java as java application, then you will get digital envelope , call android sdk pos.updateWorkKey(envelope) to inject keys into device

```


