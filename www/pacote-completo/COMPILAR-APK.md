# Extrator Jurídico — Compilar APK

**Maikon Caldeira — OAB/MG 183712**

---

## Método 1: GitHub Actions (sem instalar nada — RECOMENDADO)

```bash
git init
git add .
git commit -m "Extrator Juridico v2.0"
git remote add origin https://github.com/SEU-USUARIO/extrator-juridico.git
git branch -M main
git push -u origin main
```

→ Aguarde ~10 min → Releases → latest-apk → baixe o .apk

---

## Método 2: Android Studio (local)

```bash
npm install
npx cap copy android
# Abra Android Studio → pasta android/ → Build → Build APK(s)
```

APK em: `android/app/build/outputs/apk/debug/app-debug.apk`

---

## Configuração do App

| Campo | Valor |
|-------|-------|
| Package | `br.adv.maikoncaldeira.extrator` |
| Versão | 2.0.0 (code: 2) |
| Min SDK | Android 5.1+ (API 22) |
| Target | Android 14 (API 34) |
| Capacitor | 6.1.2 |
| Gradle | 8.6 |
| Java | 17 |
