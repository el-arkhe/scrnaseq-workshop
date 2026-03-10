# Guía de Instalación y Configuración: Workshop scRNA-seq

Este documento contiene las instrucciones paso a paso para configurar el entorno de análisis genómico utilizando **Conda**, **Mamba** y **Seurat v5**.

---

## 1. Proceso de Instalación de Miniforge/Conda

Durante la ejecución del instalador en tu terminal, sigue estas indicaciones:

### Aceptar Licencia
Cuando aparezca el mensaje:
> `Do you accept the license terms? [yes|no]`  
**Escribe:** `yes`

### Aceptar Ruta de Instalación
El instalador mostrará algo como:
> `Miniforge3 will now be installed into this location: /Users/tu_usuario/miniforge3`  
**Presiona:** `ENTER` para aceptar la ruta por defecto.

### Inicializar Conda
Cuando aparezca:
> `Proceed with initialization? [yes|no]`  
**Escribe:** `yes`  
*(Esto permite usar conda automáticamente en la terminal).*

---

## 2. Reiniciar la Terminal
**Este paso es crucial.** Después de la instalación, cierra la ventana de la terminal actual y abre una nueva. Esto asegura que el comando `conda` esté disponible en tu sesión.

---

## 3. Verificar la Instalación
En la nueva terminal, ejecuta los siguientes comandos para confirmar que las herramientas están listas:

```bash
# Verificar Conda (deberías ver algo como conda 24.x.x)
conda --version

# Verificar Mamba
mamba --version
```

---

## 4. Clonar el Repositorio del Taller
Descarga los materiales y entra en el directorio del proyecto:
```bash
# Clonar
git clone [https://github.com/elarkhe/scrnaseq-workshop](https://github.com/elarkhe/scrnaseq-workshop)

# Entrar al directorio
cd scrnaseq-workshop

# Verificar contenido (debes ver environment-minimal-seurat5.yml, docs, scripts, etc.)
ls
```

---

## 5. Crear el Entorno de Análisis
El archivo environment-minimal-seurat5.yml define todas las dependencias. Para crear el entorno, ejecuta:
```bash
mamba env create -f environment-minimal-seurat5.yml
````
Nota: Este proceso puede tardar algunos minutos dependiendo de tu conexión a internet.

---

## 6. Activar el Entorno
Una vez finalizada la creación, activa el entorno de trabajo:

```Bash
conda activate scrnaseq-seurat5
```
La terminal debería mostrar el nombre del entorno al inicio de la línea:
```Bash
(scrnaseq-seurat5) $
```

---

## 7. Verificar que el Entorno Funciona (R y Seurat)
Puedes verificar manualmente que R y las librerías principales están disponibles:

Ejecuta R en la terminal.

Dentro de R, escribe:
```Bash
R
library(Seurat)
packageVersion("Seurat")
````

Para salir de R, escribe: q() (luego presiona n).

---

## 8. Ejecutar el Test de Instalación
El repositorio incluye un script para verificar automáticamente que todo el entorno funciona correctamente. Ejecuta:

```Bash
Rscript scripts/test_installation.R
````

Resultado esperado si todo es correcto:

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

## 9. Activar el Entorno en Futuras Sesiones
Cada vez que vuelvas a trabajar en el taller, solo necesitas abrir una terminal y ejecutar:

```Bash
conda activate scrnaseq-seurat5
```

