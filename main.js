const { app, BrowserWindow } = require('electron');
const path = require('path');

function createWindow() {
  const win = new BrowserWindow({
    width: 1280, height: 800, minWidth: 900, minHeight: 600,
    title: 'Extrator Jurídico — OAB/MG 183712',
    backgroundColor: '#0d1117',
    webPreferences: { nodeIntegration: false, contextIsolation: true, sandbox: true },
  });
  win.loadFile(path.join(__dirname, 'src', 'index.html'));
}
app.whenReady().then(() => {
  createWindow();
  app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
});
app.on('window-all-closed', () => { if (process.platform !== 'darwin') app.quit(); });
