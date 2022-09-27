# Doc
https://access.redhat.com/documentation/en-us/red_hat_satellite/6.7/html/hammer_cli_guide/chap-cli_guide-introduction_to_hammer

https://projects.theforeman.org/projects/hammer-cli/wiki/List_of_Plugins

https://github.com/theforeman/hammer-cli

https://github.com/theforeman/hammer-cli/tree/master/doc


# Create Subnet
https://access.redhat.com/documentation/en-us/red_hat_satellite/6.7/html/provisioning_guide/configuring_networking#Configuring_Networking-Adding_a_Subnet_to_the_Satellite_Server

```For CLI Users

Create the subnet with the following command:

# hammer subnet create --name "My_Network" \
--description "your_description" \
--network "192.168.140.0" --mask "255.255.255.0" \
--gateway "192.168.140.1" --dns-primary "192.168.140.2" \
--dns-secondary "8.8.8.8" --ipam "DHCP" \
--from "192.168.140.111" --to "192.168.140.250" --boot-mode "DHCP" \
--domains "example.com" --dhcp-id 1 --dns-id 1 --tftp-id 1 --template-id 1 \
--locations "My_Location" --organizations "My_Organization"
```
