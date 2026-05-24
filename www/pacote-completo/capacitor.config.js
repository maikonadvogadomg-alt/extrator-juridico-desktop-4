/** @type {import('@capacitor/cli').CapacitorConfig} */
const config = {
  appId: 'br.adv.maikoncaldeira.extrator',
  appName: 'Extrator Jurídico',
  webDir: 'dist',
  server: { androidScheme: 'https', cleartext: false },
  android: { buildOptions: { releaseType: 'APK' }, allowMixedContent: false },
  plugins: { SplashScreen: { launchShowDuration: 0 } },
};
module.exports = config;
