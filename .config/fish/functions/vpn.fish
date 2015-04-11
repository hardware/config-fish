function vpn --description 'Handle VPN connections'
    sudo systemctl $argv openvpn@cyberghost.service;
end
