# Discovery works!
# Additional configuration from: Smart proxy for DNS, DHCP etc.
# theforeman.org/manuals/2.1/index.html#3.2.3InstallationScenarios

admin_pass='uni'
fqdn='metal.ai'
interface='{{interface}}'
gateway='10.0.0.1'
range="10.0.0.100 10.0.0.200"
nameserver="{{default_ipv4}}"

foreman-installer \
  --enable-foreman \
  --enable-foreman-cli \
  --enable-foreman-cli-discovery \
  --enable-foreman-plugin-discovery \
  --enable-foreman-proxy \
  --enable-foreman-proxy-plugin-discovery \
  --foreman-unattended true \
  --foreman-proxy-dns=true \
  --foreman-proxy-dns-interface="$interface" \
  --foreman-proxy-dns-zone="$fqdn" \
  --foreman-proxy-dns-reverse='10.in-addr.arpa' \
  --foreman-proxy-dns-forwarders=8.8.8.8 \
  --foreman-proxy-dns-forwarders=8.8.4.4 \
  --foreman-proxy-foreman-base-url=https://foreman.metal.ai \
  --foreman-proxy-trusted-hosts=foreman.metal.ai \
  --foreman-proxy-dhcp true \
  --foreman-proxy-dhcp-interface "$interface" \
  --foreman-proxy-dhcp-gateway "$gateway" \
  --foreman-proxy-dhcp-range "$range" \
  --foreman-proxy-dhcp-nameservers "$nameserver" \
  --foreman-initial-admin-password "$admin_pass" \
  --foreman-proxy-tftp true \
  --foreman-proxy-tftp-listen-on 'both' \
  --foreman-proxy-tftp-manage-wget true \
  --foreman-proxy-tftp-managed true \
  --foreman-proxy-tftp-replace-grub2-cfg true \
  --foreman-proxy-http true \
  --foreman-proxy-httpboot true \
  --foreman-proxy-httpboot-listen-on 'both' \
  --foreman-proxy-plugin-discovery-install-images true \
  --foreman-proxy-plugin-discovery-source-url "http://downloads.theforeman.org/discovery/releases/3.5/"

# Breaks
  # --foreman-proxy-dns-reverse=0.0.10.in-addr.arpa \

# Fixes 'ERF12-2357':
# https://projects.theforeman.org/issues/8603
