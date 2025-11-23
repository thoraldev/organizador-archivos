# Organizador de Archivos por Extension

Un script batch simple y eficiente para organizar automaticamente todos tus archivos en carpetas segun su extension.

## Descripcion

Este organizador de archivos te permite ordenar rapidamente tu carpeta clasificando los archivos por tipo segun su extension. Con un solo click, crea automaticamente carpetas para cada tipo de archivo y mueve los archivos correspondientes.

Perfecta para:
- Limpiar carpetas desorganizadas
- Organizar descargas
- Clasificar archivos por tipo
- Mantener tu escritorio ordenado

## Caracteristicas

✅ **Simple y rapido** - Interfaz minimalista y facil de usar
✅ **Automatico** - Crea carpetas sobre la marcha
✅ **Seguro** - Pide confirmacion antes de ejecutar
✅ **Sin dependencias** - Solo necesitas Windows con CMD
✅ **Informativo** - Muestra resumen detallado de operaciones
✅ **Inteligente** - Ignora carpetas y el propio script

## Como usar

### Metodo 1: Ejecucion directa
1. Descarga el archivo `organizador.bat`
2. Coloca el archivo en la carpeta que deseas organizar
3. Haz doble click en el archivo
4. Confirma con "S" (Si) cuando lo solicite
5. Espera a que termine y presiona una tecla

### Metodo 2: Desde Command Prompt
```bash
cd ruta/a/tu/carpeta
organizador.bat
```

## Ejemplo de uso

Antes:
```
Mi_Carpeta/
├── documento.pdf
├── foto.jpg
├── musica.mp3
├── archivo.zip
├── programa.exe
└── organizador.bat
```

Despues de ejecutar:
```
Mi_Carpeta/
├── pdf/
│   └── documento.pdf
├── jpg/
│   └── foto.jpg
├── mp3/
│   └── musica.mp3
├── zip/
│   └── archivo.zip
├── exe/
│   └── programa.exe
└── organizador.bat
```

## Requisitos

- Windows XP o superior
- Command Prompt (CMD)
- Permisos de lectura/escritura en la carpeta

## Seguridad

- El script **ignora archivos ejecutables** (.exe, .bat, .cmd, .com, .scr, .vbs, .js, .lnk) para evitar problemas
- **Pide confirmacion** antes de empezar
- **No elimina** ningun archivo, solo los reorganiza
- **Protege el propio script** para que no se mueva a si mismo

## Resultados

### Resumen al finalizar

```
======================================================
=== RESUMEN DE LA ORGANIZACION ===
======================================================
Archivos movidos: 45
Carpetas creadas: 12
Errores encontrados: 0
======================================================
```

## Limitaciones

- Solo funciona en Windows
- No organiza recursivamente subcarpetas
- No crea subcarpetas adicionales dentro de las carpetas de extension
- Los nombres de carpeta se basan unicamente en la extension del archivo

## Proximas mejoras

- [ ] Opcion para organizar subcarpetas recursivamente
- [ ] Interfaz grafica (GUI)
- [ ] Soporte para sistemas operativos Unix/Linux
- [ ] Registro completo de operaciones (LOG)
- [ ] Deshacer operaciones

## Troubleshooting

### El script no se ejecuta
- Verifica que tiene permisos de ejecucion
- Intenta ejecutar como administrador
- Desactiva temporalmente el antivirus

### Los archivos no se mueven
- Asegurate de que algunos archivos estan en la carpeta raiz
- Verifica que tienes permisos de lectura/escritura
- Comprueba que no estan en uso por otro programa

### Se crean carpetas vacias
- Esto sucede si hay archivos sin extension
- Son ignorados automaticamente (comportamiento normal)

## Ejemplos de extensiones organizadas

Algunas extensiones que seran organizadas automaticamente:

**Documentos**: .pdf, .doc, .docx, .txt, .xls, .xlsx
**Imagenes**: .jpg, .jpeg, .png, .gif, .bmp, .svg
**Videos**: .mp4, .avi, .mkv, .mov, .flv
**Audio**: .mp3, .wav, .flac, .aac, .ogg
**Comprimidos**: .zip, .rar, .7z, .tar, .gz
**Codigo**: .py, .js, .java, .cpp, .html, .css

## Licencia

Este proyecto esta bajo licencia MIT. Puedes usar, modificar y distribuir este script libremente.

## Autor

Creado con proposito de simplificar la organizacion de archivos en Windows.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias o encuentras bugs:
1. Abre un issue describiendo el problema
2. Proporciona pasos para reproducir el error
3. Sugiere mejoras o nuevas caracteristicas

## Contacto

Si tienes preguntas o sugerencias, puedes:
- Abrir un issue en GitHub
- Dejar un comentario en las discussions

---

**Nota**: Este script es gratuito y se proporciona "tal cual". Usa bajo tu propio riesgo. Se recomienda hacer backup de archivos importantes antes de usar.

## Changelog

### v3.0
- Version estable y simplificada
- Solo organiza por extension (como se solicito)
- Interfaz limpia y directa
- Mejor manejo de errores

### v2.0
- Agregado sistema de backup
- Menus interactivos
- Estadisticas detalladas

### v1.0
- Version inicial
- Organizacion basica por extension
