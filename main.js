const {app,BrowserWindow,Menu}=require('electron');
function createWindow(){
  const w=new BrowserWindow({width:1200,height:760,minWidth:900,minHeight:600,title:'Daftar Game Rexel',icon:require('path').join(__dirname,'icon.ico'),backgroundColor:'#0f1220',
    webPreferences:{nodeIntegration:true,contextIsolation:false}});
  Menu.setApplicationMenu(null);w.loadFile('index.html');
}
app.whenReady().then(createWindow);
app.on('window-all-closed',()=>app.quit());
