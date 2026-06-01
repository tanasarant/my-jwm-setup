cat << 'EOF' > install.sh
#!/bin/bash
# สคริปต์ติดตั้งชุดแต่ง JWM สไตล์ซิ่ง สาย Low-Resource สัญชาติไทย

echo "=============================================="
echo "1. Installing all dependencies and Thai fonts..."
echo "=============================================="
sudo apt update
sudo apt install -y jwm alttab xdgmenumaker picom gnome-terminal lm-sensors wmctrl fonts-thai-tlwg

echo "=============================================="
echo "2. Deploying configuration files to Home..."
echo "=============================================="
cp .jwmrc ~/
cp .jwmrc_keys ~/
cp .xprofile ~/

echo "=============================================="
echo "3. Granting execution permission to .xprofile..."
echo "=============================================="
chmod +x ~/.xprofile

echo "=============================================="
echo " Setup Complete! Please restart JWM or Log out."
echo "=============================================="
EOF

# เปิดสิทธิ์รันสคริปต์ติดตั้งให้พร้อมใช้
chmod +x install.sh
