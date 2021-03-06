echo "
192.168.56.30 master
192.168.56.31 worker1
192.168.56.32 worker2
" >> /etc/hosts
sed -i '/127.0.1.1/d' /etc/hosts

sudo apt update -y && sudo apt upgrade -y

mkdir /root/.ssh
echo "
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZvN9joRKKAXWj/GZQEX2+agPOelfsPogkZeeu9WdvqVEwzNp+bpMUON+Y0YhnNoHiXeL1O1eMcm1U3inFckIdefrrDtKMT/UqrzbbNNarcMBPWDH/f1q+csAP9PWb/g+jjjM73/gH81f0lVxEYEQCizONdFFPC0Z9I6sb1q1aOBv+BcQbxMn3de4oZutFJX7GL5JeJLSAQVWtn7ozN5j/F/8yAcmZGtM/9ZBCvp6stuIX5m8PkXJVrSHdtw0udJZ5GP87srdLxltYm9PP0GxsqnkJv7yIoIzj91o3ahQXMP0av2/P46CqVdrAoLOY2EPQ44BsXPdnv1Hd50t7W3nnlHxgne8TY8/1Wb1ldEvlaV2k6QBooeTZlfyOrnuizfWtwcSiwfxLFLCXTN0xehDZtHk56pnGRw7e7q2yZ5RMyYoPQIMDucmXH39UNi1Oqfz+T+CVGTxscuSywrOnDnryC39BpuhIIeL10lL16EE9+aJqgeO6ZPn30r/D8B6wxts= vagrant@czantoine
" > /root/.ssh/authorized_keys

echo "-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----

" > /root/.ssh/id_rsa

chmod 600 /root/.ssh/id_rsa
apt install tmux -y && apt install curl -y
