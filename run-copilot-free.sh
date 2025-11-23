#!/bin/bash
# run-copilot-free.sh
# สคริปต์รัน Copilot Free บนเครื่อง

# ตรวจสอบว่า GitHub CLI ติดตั้งแล้ว
if ! command -v gh &> /dev/null; then
    echo "โปรดติดตั้ง GitHub CLI ก่อน: https://cli.github.com/"
    exit 1
fi

# เข้าสู่ระบบ GitHub
gh auth login --web

# เปิดโฟลเดอร์โปรเจกต์
PROJECT_DIR="${1:-$(pwd)}"
cd "$PROJECT_DIR" || exit

# เริ่มรัน Copilot Free ใน IDE (เช่น VSCode)
echo "กำลังเปิด VSCode พร้อม Copilot Free..."
code .

echo "เรียบร้อย! คุณสามารถเริ่มรับคำแนะนำโค้ดได้แล้ว"
