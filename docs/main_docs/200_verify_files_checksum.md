## Verificación de archivos descargados (MD5 checksum)

Después de descargar los archivos del dataset, es **altamente recomendable** verificar su integridad mediante checksums MD5.  

Este paso permite confirmar que los archivos se descargaron **completos y sin corrupción**, especialmente cuando se trata de archivos grandes (`.h5`, `.fastq.gz`).

### Paso 1. Crear el archivo de checksums

Crea un archivo de texto (`check.md5`) que contenga el hash MD5 esperado y el nombre exacto del archivo:

```bash
echo "<md5_hash>  <filename>" > check.md5
```

Si deseas verificar múltiples archivos, agrégalos al mismo archivo usando `>>`:

```bash
echo "<md5_hash>  <filename>" >> check.md5
```
Ojo, hay dos espacios entre el hash y el nombre del archivo.

Ejemplo:

```bash
echo "bdad612c2c0e0aec715a273dc95a9a91  sample1_filtered_feature_bc_matrix.h5" > check.md5
echo "be6fbc95481d813c8113b696ca3c3efd  sample2_filtered_feature_bc_matrix.h5" >> check.md5
```

### Paso 2. Confirmar archivos descargados

Verifica que los archivos estén presentes en el mismo directorio y revisa sus tamaños:

```bash
ls -l
```

### Paso 3. Validar la integridad de los archivos

Ejecuta la verificación MD5 contra todos los archivos listados en check.md5:

```bash
md5sum -c check.md5
````

Recibirás: 

OK → sí el archivo fue descargado correctamente

FAILED → sí el archivo está incompleto o corrupto y debe descargarse nuevamente

--- 

CSC. Febrero 2025