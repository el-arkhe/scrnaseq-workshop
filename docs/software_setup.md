# Guía de Instalación y Configuración

Este documento contiene las instrucciones paso a paso para configurar el entorno de análisis transcriptomico utilizando **Conda**, **Mamba** y **Seurat v5**.

## Instrucciones para OS y Linux 

### 1. Proceso de instalación de Miniforge/Conda

Primero descarga el software Miniforge/Conda que te permitira crear un entorno de desarrollo controlado para ejecutar los scripts del taller. El sitio para bajar mamba: https://conda-forge.org/download/

Durante la ejecución del instalador en tu terminal, sigue estas indicaciones:

**Nota**. Es recomendable ejecutar el instalador en tu *usuario* del computador local para evitar problemas de autenticación. 

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


### 2. Reiniciar la terminal
**Este paso es crucial.** Después de la instalación, cierra la ventana de la terminal actual y abre una nueva. Esto asegura que el comando `conda` esté disponible en tu sesión.


### 3. Verificar la instalación
En la nueva terminal, ejecuta los siguientes comandos para confirmar que las herramientas están listas:

```bash
# Verificar Conda (deberías ver algo como conda 24.x.x)
conda --version

# Verificar Mamba
mamba --version
```


### 4. Clonar el repositorio del taller
Descarga los materiales y entra en el directorio del proyecto. Si ya lo hiciste asegurate de tener la versión más reciente ejecutando `git-pull` desde la ruta raíz del proyecto en tu terminal. 

```bash
# Clonar
git clone [https://github.com/elarkhe/scrnaseq-workshop](https://github.com/elarkhe/scrnaseq-workshop)

# Entrar al directorio
cd scrnaseq-workshop

# Verificar contenido (debes ver environment-minimal-seurat5.yml, docs, scripts, etc.)
ls
```


### 5. Crear el entorno de análisis
El archivo environment-minimal-seurat5.yml define todas las dependencias. Para crear el entorno, ejecuta:
```bash
mamba env create -f environment-minimal-seurat5.yml
```
**Nota**: Este proceso puede tardar algunos minutos dependiendo de tu conexión a internet.



### 6. Activar el entorno
Una vez finalizada la creación, activa el entorno de trabajo:

```Bash
conda activate scrnaseq-seurat5
```
La terminal debería mostrar el nombre del entorno al inicio de la línea:
```Bash
(scrnaseq-seurat5) $
```


### 7. Verificar que el entorno funciona (R y Seurat)
Verificar manualmente que R y las librerías principales están disponibles:

Ejecuta R en la terminal.

Dentro de R, escribe:
```Bash
R
library(Seurat)
packageVersion("Seurat")
```

Para salir de R, escribe: q() (luego presiona n).



### 8. Ejecutar el test de instalación
El repositorio incluye un script para verificar automáticamente que todo el entorno funciona correctamente. Ejecuta en el prompt de la términal (fuera de R):

```Bash
Rscript scripts/test_installation.R
```

Opcionalmente puedes hacer `el test` de forma manual desde la terminal dentro de `R`. Sigue el script [`Prueba de instalación`](../scripts/test_installation.R).

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

### 9. Activar el entorno en futuras sesiones
Cada vez que vuelvas a trabajar en el taller, solo necesitas abrir una terminal y ejecutar:

```Bash
conda activate scrnaseq-seurat5
```

Estas listo para comenzar!

---

CSC. Marzo 05, 2026

