# TunnelX

عميل VPN مبني على V2Ray/Xray. يتصل بخادمك الخاص عبر ملف شخصي (Profile) تضيفه بنفسك.
حقلا SNI وHost قابلان للتعديل لكل ملف (مع Cloud Run ضع نطاق خدمتك).

## البناء
1. ضع رابط مكتبة المحرك في LIB_URL داخل scripts/fetch-libs.sh (أو ضع libv2ray.aar يدوياً في app/libs).
2. ارفع المشروع إلى GitHub فيعمل build.yml تلقائياً.

## APK موقّع
keytool -genkey -v -keystore release.jks -alias tunnelx -keyalg RSA -keysize 2048 -validity 10000
base64 -w0 release.jks
أضف في Settings > Secrets and variables > Actions: KEYSTORE_BASE64, KEYSTORE_PASSWORD, KEY_ALIAS, KEY_PASSWORD
ثم: git tag v1.0.0 && git push origin v1.0.0

## الحالة
هيكل المشروع وGradle وworkflows جاهزة. المتبقي: المحرك وخدمة VPN والواجهات.
