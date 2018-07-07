#Illustrative Command Sequence File Description
[Header]
Version = 4.2
Hash Algorithm = sha256
Engine = ANY
Engine Configuration = 0
Certificate Format = X509
Signature Format = CMS
[Install SRK]
File = "../crts/SRK_1_2_3_4_table.bin"
# Index of the key location in the SRK table to be installed
Source index = 0 
[Install CSFK]
# Key used to authenticate the CSF data
File = "../crts/CSF1_1_sha256_2048_65537_v3_usr_crt.pem"
[Authenticate CSF]
[Install Key]
# Key slot index used to authenticate the key to be installed
Verification index = 0
# Target key slot in HAB key store where key will be installed
Target Index = 2
# Key to install
File= "../crts/IMG1_1_sha256_2048_65537_v3_usr_crt.pem"
[Authenticate Data]
# Key slot index used to authenticate the image data
Verification index = 2
# Address Offset Length Data File Path
# Blocks = 0x12000000 0x0 0x557020 "zImage_pad_ivt.bin"
