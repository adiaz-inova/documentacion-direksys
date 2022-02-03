# !/bin/bash
echo -e "\nTransformando Certificados .cer \n"
for archivo in *cer
do
	echo $archivo
	openssl x509 -inform DER -outform PEM -in $archivo -out $archivo.pem
	openssl x509 -inform DER -in $archivo -noout -serial >> "certificados.txt"
done
echo -e "\nTransformando Certificados .key \n"
for archivo in *key
do
	echo $archivo.pem
	openssl pkcs8 -inform DER -in $archivo -out $archivo.pem # -passin pass:'SUR3548j' 
done
