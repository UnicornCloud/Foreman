# keep! from:
# https://community.theforeman.org/t/foreman-in-multi-interface-setup-experience-digest/10272


admin_pass='uni'
interface='{{interface}}'
gateway='10.0.0.1'
range="10.0.0.100 10.0.0.200"
nameserver="{{default_ipv4}}"

foreman-installer \
  --foreman-initial-admin-password "$admin_pass" \
\
  --enable-foreman \
  --enable-foreman-cli \
  --enable-foreman-proxy \
\
  --enable-foreman-plugin-discovery \
  --enable-foreman-proxy-plugin-discovery \
  --foreman-proxy-plugin-discovery-install-images true \
  --foreman-proxy-plugin-discovery-source-url "http://downloads.theforeman.org/discovery/releases/3.5/"
\
  --foreman-proxy-dhcp true \
  --foreman-proxy-dhcp-interface "$interface" \
  --foreman-proxy-dhcp-managed true \
  --foreman-proxy-dhcp-subnets "10.0.0.0/24" \
\
  --foreman-proxy-tftp true \
  --foreman-proxy-tftp-managed true \
\
--foreman-proxy-dns true \
--foreman-proxy-dns-interface "$interface" \
--foreman-proxy-dns-forwarders="157.99.64.64" \
--foreman-proxy-dns-managed=true \
--foreman-proxy-dns-zone=dev.cluster.pasteur.fr \
\
--enable-foreman-proxy-plugin-ansible \
--enable-foreman-plugin-ansible \
--foreman-proxy-dns-reverse=10.168.192.in-addr.arpa
