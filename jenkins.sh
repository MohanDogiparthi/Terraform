#!/bin/bash
packer version
packer validate packer.json
if [ $? —eq 0 ]
then
echo "Validation Sucessfull.lLets Build The Image."
packer build packer.json 2>$1 | tee output.txt
tail -2 output.txt | head -2 | awk 'match(S0, /ami-.*/) { print substr(S0, RSTART, RLENGTH)
AMIID=$(cat ami.txt)
echo "variable imagename { default = $AMIID }" >> variables.tf
terraform init
terraform apply
else
echo "Validation FAILED. Check the CODE"
exit 1
fi
