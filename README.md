# Reloj polybar
Script bash para polybar de relojes mundiales
# Módulo para config.ini de polybar
```
[module/relojes]
type = custom/script
exec = /ruta/relojes.sh
format-prefix = "󱉊   "
label ="%output%"
tail = true
format-foreground = #cdd6f4
format-background = #1e1e2e
```
# vista
![vista](output.gif)
