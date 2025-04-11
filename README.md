# Linux-OS

**** Create virtual machine on Microsoft Azure

Deploying Virtual Machine and Configuring Inbound Security Rule The first step was to set up a newly created Virtual Machine on Azure with Ubuntu 24.04 as the image. I have greyed out my Public IP and Subscription ID.

![image](https://github.com/user-attachments/assets/bce08d9b-09ed-4242-a112-e7b94f4e48b3)

To access the virtual machine over the internet, an inbound security rule for SSH which utilizes port 22 had to be created in the networking tab of the Virtual Machine. With Port 22 open, this enables us to access the VM over the internet using the Public IP.



