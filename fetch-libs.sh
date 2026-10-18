#!/usr/bin/env bash
# نزّل مكتبة المحرك (AAR) بإصدار مثبّت من صفحة Releases الرسمية وتحقق من checksum.
set -euo pipefail
LIB_URL="${LIB_URL:-}"
LIB_SHA256="${LIB_SHA256:-}"
if [ -z "$LIB_URL" ]; then echo "LIB_URL غير مضبوط، تخطي التنزيل."; exit 0; fi
mkdir -p app/libs
curl -fsSL "$LIB_URL" -o app/libs/libv2ray.aar
if [ -n "$LIB_SHA256" ]; then echo "$LIB_SHA256  app/libs/libv2ray.aar" | sha256sum -c -; fi
