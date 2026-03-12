# Guía de Instalación y Configuración

Este documento contiene las instrucciones paso a paso para configurar el entorno de análisis transcriptomico utilizando **Conda**, **Mamba** y **Seurat v5**.

## 1. Instalación de Miniforge (Conda + Mamba)

Primero descarga **Miniforge**, que permitirá crear un entorno de desarrollo controlado para ejecutar los scripts del taller.

Descarga desde: https://conda-forge.org/download/

Selecciona el instalador correspondiente a tu sistema operativo.

### macOS y Linux

#### Ejecutar el instalador

En la terminal, ejecuta el archivo descargado y sigue estas indicaciones durante la instalación:
```bash
bash Miniforge3-*.sh 
```

>**Nota:** Es recomendable instalar Miniforge en tu *usuario local* para evitar problemas de permisos.

#### Aceptar licencia
Cuando aparezca el mensaje:
> `Do you accept the license terms? [yes|no]`  
**Escribe:** `yes`

#### Aceptar ruta de instalación
El instalador mostrará algo como:
> `Miniforge3 will now be installed into this location: /Users/tu_usuario/miniforge3`  
**Presiona:** `ENTER` para aceptar la ruta por defecto.

#### Inicializa conda
Cuando aparezca:
> `Proceed with initialization? [yes|no]`  
**Escribe:** `yes`  
*(Esto permite usar conda automáticamente en la terminal).*


## 2. Reiniciar la terminal

**Este paso es crucial.** 

Después de la instalación, cierra la ventana de la terminal actual y abre una nueva. Esto asegura que el comando `conda` esté disponible en tu sesión.


## 3. Verificar la instalación
En la nueva terminal, ejecuta los siguientes comandos para confirmar que las herramientas están listas:

```bash
# Verificar Conda (deberías ver algo como conda 24.x.x)
conda --version

# Verificar Mamba
mamba --version
```
Deberías ver algo similar a:
```bash
conda 24.x.x
```

## 4. Clonar el repositorio del taller
Descarga los materiales del taller.

```bash
git clone https://github.com/elarkhe/scrnaseq-workshop

# Entrar al directorio
cd scrnaseq-workshop

# Verificar contenido (debes ver environment-minimal-seurat5.yml, docs, scripts, etc.)
ls
```
Para más detalles sobre como clonar el repositorio sigue las instrucciones en [`Github repo`](docs/main_docs/09_github_repo.md)

Si ya habías clonado el repositorio anteriormente, puedes actualizarlo con:
```bash
git pull
```

## 5. Crear el entorno de análisis
El archivo **environment-minimal-seurat5.yml** define todas las dependencias. Para crear el entorno, ejecuta:
```bash
mamba env create -f environment-minimal-seurat5.yml
```
**Nota**: Este proceso puede tardar algunos minutos dependiendo de tu conexión a internet.



## 6. Activar el entorno
Una vez finalizada la creación, activa el entorno de trabajo:

```Bash
conda activate scrnaseq-seurat5
```
La terminal debería mostrar el nombre del entorno al inicio de la línea:
```Bash
(scrnaseq-seurat5) $
```


### 7. Verificar que R y Seurat funcionan bien

Inicia R desde la terminal: 
```Bash
R
```

Dentro de R ejecuta:
```Bash
library(Seurat)
packageVersion("Seurat")
```

Para salir de R, escribe: q() (luego presiona n).

## 8. Ejecutar el test de instalación
El repositorio incluye un script para verificar automáticamente que todo el entorno funciona correctamente. 

Ejecuta desde la terminal:

```Bash
Rscript scripts/test_installation.R
```

Resultado esperado en ambos casos sí todo es correcto:

```Plaintext
scRNA-seq Workshop Installation Test

✔ Seurat loaded successfully
✔ sctransform loaded successfully
✔ hdf5r loaded successfully

Counts matrix loaded successfully
Matrix dimensions:
Genes: 36601
Cells: 5000

Seurat object created successfully
```

## 9. Activar el entorno en futuras sesiones
Cada vez que vuelvas a trabajar en el taller, solo necesitas abrir una terminal y ejecutar:

```Bash
conda activate scrnaseq-seurat5
```

¡Listo! El entorno estará preparado para ejecutar los scripts del taller.

---

CSC. Marzo 05, 2026

