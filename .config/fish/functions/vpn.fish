function vpn --description 'Handle VPN connections'
    sudo systemctl $argv openvpn@server.service;
end
