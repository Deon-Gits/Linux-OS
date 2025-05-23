# Linux-OS

**** Create virtual machine on Microsoft Azure

- Deploying Virtual Machine and Configuring Inbound Security Rule The first step was to set up a newly created Virtual Machine on Azure with Ubuntu 24.04 as the image. I have greyed out my Public IP and Subscription ID.
https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal?tabs=ubuntu

![image](https://github.com/user-attachments/assets/bce08d9b-09ed-4242-a112-e7b94f4e48b3)

- To access the virtual machine over the internet, an inbound security rule for SSH which utilizes port 22 had to be created in the networking tab of the Virtual Machine. With Port 22 open, this enables us to access the VM over the internet using the Public IP.

![image](https://github.com/user-attachments/assets/c6b308c6-46be-40c5-aad4-006684c4788d)

- Subsequently, I created a bash script to check for the latest version of java and install it simultaneously or otherwise return a message that states it is up to date.

![image](https://github.com/user-attachments/assets/ac1896f8-3c3f-4751-863e-57f9c0abafa4)

- Adding a bash script that checks all the processes running for the current user (USER env var) and prints out the processes in console. I used ps aux command and grep for the user. This can also ask for a user's input for sorting the processes output either by memory or CPU consumption, and print the sorted list.
![image](https://github.com/user-attachments/assets/57c00839-410e-4812-a493-b492cc846aaf)

Bash Script - Node App Check Status
Extend the script to check after running the application that the application has successfully started and prints out the application's running process and the port where it's listening. 



Bash Script - Node App with Log Directory
Extend the script to accept a parameter input log_directory: a directory where application will write logs.

The script will check whether the parameter value is a directory name that doesn't exist and will create the directory, if it does exist, it sets the env var LOG_DIR to the directory's absolute path before running the application, so the application can read the LOG_DIR environment variable and write its logs there.



