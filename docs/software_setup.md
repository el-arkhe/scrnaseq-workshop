# Guía de Instalación y Configuración

Este documento contiene las instrucciones paso a paso para configurar el entorno de análisis transcriptómico utilizando **Conda**, **Mamba** y **Seurat v5**.

> Estas instrucciones aplican para **macOS, Linux y Windows**.  
> En Windows se recomienda utilizar **PowerShell**, **Windows Terminal** o **Anaconda Prompt**.

## 1. Instalación de Miniforge (Conda + Mamba)

Primero descarga **Miniforge**, que permitirá crear un entorno de desarrollo controlado para ejecutar los scripts del taller.

Descarga desde: https://conda-forge.org/download/

Selecciona el instalador correspondiente a tu sistema operativo.

### Para usuarios Windows:

Para ejecutar los comandos de esta guía necesitas abrir una **terminal**.

Puedes hacerlo de la siguiente forma:

**PowerShell (recomendado)**  
1. Presiona **Windows + S**  
2. Escribe **PowerShell**  
3. Haz clic en **Windows PowerShell**

Una vez abierta la terminal puedes continuar con los comandos de esta guía y saltar al **inciso 2**.


### Para usuarios macOS y Linux:

#### Ejecutar el instalador

En la terminal, ejecuta el archivo descargado y sigue estas indicaciones durante la instalación:
```textplain
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

#### Inicializar conda
Cuando aparezca:
> `Proceed with initialization? [yes|no]`  

**Escribe:** `yes`  

*(Esto permite usar conda automáticamente en la terminal).*


## 2. Reiniciar la terminal

**Este paso es crucial.** 

Después de la instalación, cierra la ventana de la terminal actual y abre una nueva. Esto asegura que el comando `conda` esté disponible en tu sesión.


## 3. Verificar la instalación
En la nueva terminal, ejecuta:
```bash
# Verificar Conda (deberías ver algo como conda 24.x.x)
conda --version
# Verificar Mamba
mamba --version
```

Deberías ver algo similar a:
```textplain
conda 24.x.x
```

## 4. Clonar el repositorio del taller con Git

Si es necesario, primero verifica que Git esté instalado:
```bash
git --version
```

Si Git no está instalado, puedes descargarlo desde https://git-scm.com/downloads

Ahora puedes clonar el repositorio del taller (clonar):
```bash
git clone https://github.com/elarkhe/scrnaseq-workshop
# Entrar al directorio
cd scrnaseq-workshop
```

Verificar contenido del repositorio:
```bash
ls    # macOS / Linux
dir   # Windows
```

Deberías ver archivos como:
```bash
environment-minimal-seurat5.yml
docs/
scripts/
```

Si ya habías clonado el repositorio anteriormente, puedes actualizarlo con:
```bash
git pull
```

Para más detalles sobre como clonar el repositorio sigue las instrucciones en [`Github repo`](docs/main_docs/09_github_repo.md)


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

Si la instalación falla o el entorno no se creó correctamente, puedes eliminarlo y volver a intentarlo:

```bash
conda env remove -n scrnaseq-seurat5
```

### 7. Verificar que R y Seurat funcionan bien

Inicia R desde la terminal: 
```Bash
R
```

Dentro de R ejecuta:
```R
library(Seurat)
packageVersion("Seurat")
```
Para salir de R, escribe:
```R
q() (luego presiona n).
```
luego presiona *n*.

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

