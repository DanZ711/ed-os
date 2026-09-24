// ed-os: optimizari de memorie pentru calculatoare slabe
// Testat: ~120MB economie cu 2 tab-uri (951MB -> 829MB total sistem)
pref("fission.autostart", false);
pref("dom.ipc.processCount", 2);
pref("dom.ipc.processPrelaunch.enabled", false);
pref("browser.aboutwelcome.enabled", false);
