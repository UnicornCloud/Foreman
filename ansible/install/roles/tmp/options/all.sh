netif=

# Core
--foreman-initial-admin-password='uni'
--foreman-proxy-dhcp
--foreman-proxy-dns
--foreman-proxy-tftp

# config
--foreman-proxy-dhcp-interface="$netif"
--foreman-proxy-dhcp-gateway=""


# feature
--enable-foreman-cli
--enable-foreman-cli-ansible
--enable-foreman-cli-azure
--enable-foreman-cli-discovery
--enable-foreman-cli-kubevirt
--enable-foreman-plugin-ansible
--enable-foreman-plugin-azure
--enable-foreman-plugin-dhcp-browser
--enable-foreman-plugin-discovery
--enable-foreman-compute-libvirt
--enable-foreman-compute-openstack

#/etc/foreman-installer/scenarios.d/foreman-answers.yaml
