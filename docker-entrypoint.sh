#!/bin/sh
cat > config.json << EOF
{
    "inbounds": [
        {
            "port": 443,
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "62c4a147-7bc9-4479-b415-5225f9e1d352"
                    }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF


nohup xray > xray.log 2>&1 &
cloudflared tunnel --url http://localhost:443
