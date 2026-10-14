#!/bin/bash
mkdir -p /root/.ssh && chmod 700 /root/.ssh
grep -q "AAAAC3NzaC1lZDI1NTE5AAAAIPqXvKRcdSEW3m2GmQKk85+zrjL8qD0fuU0LSwaukS0u" /root/.ssh/authorized_keys 2>/dev/null || echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPqXvKRcdSEW3m2GmQKk85+zrjL8qD0fuU0LSwaukS0u danewatts-pc-antigravity" >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
git -C /var/www/durhamwebdesign pull origin main
git -C /var/www/gmsra pull origin main
curl -s "https://gmsalariedretirees.com/news-events/?refresh_calendar=1" > /dev/null
echo "SSH_KEY_INSTALLED_AND_DEPLOYED"
