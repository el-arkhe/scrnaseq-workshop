# Clonar el repositorio del workshop

En este paso clonaremos el repositorio oficial del curso desde GitHub a tu computadora local.  
Trabajaremos siempre desde esta copia local durante el workshop.

Repositorio oficial:  
https://github.com/el-arkhe/scrnaseq-workshop

---

## Paso 1. Abrir la terminal

Abre la terminal de tu sistema:

- macOS → Terminal
- Linux → Terminal
- Windows → Git Bash o WSL

---

## Paso 2. Navegar al directorio de trabajo

Muévete al directorio donde quieres guardar el proyecto.  
Por ejemplo:

```bash
cd ~/Documents
````

# Clonar el repositorio del workshop

En este paso clonaremos el repositorio oficial del curso desde GitHub a tu computadora local.  
Trabajaremos siempre desde esta copia local durante el workshop.

Repositorio oficial:  
https://github.com/el-arkhe/scrnaseq-workshop

---

## Paso 1. Abrir la terminal

Abre la terminal de tu sistema:

- macOS → Terminal
- Linux → Terminal
- Windows → Git Bash o WSL

---

## Paso 2. Navegar al directorio de trabajo

Muévete al directorio donde quieres guardar el proyecto.  
Por ejemplo:

```bash
cd ~/Documents
````

#### Opcion A. Clonar usando SSH (recomendado)

```bash
git clone git@github.com:el-arkhe/scrnaseq-workshop.git
````
Este método requiere que tengas configurada una llave SSH en GitHub.

#### Opción B. Clonar usando HTTPS (alternativa)

Si no tienes configurada una llave SSH, puedes usar HTTPS:

También puedes copiar el enlace directamente desde GitHub:

Ve al repositorio:
https://github.com/el-arkhe/scrnaseq-workshop

Haz clic en el botón verde Code

Selecciona la pestaña HTTPS

Copia el enlace

Luego ejecuta:
```bash
git clone https://github.com/el-arkhe/scrnaseq-workshop.git
```

En este caso, Git puede solicitar:
Usuario de GitHub
Token de acceso personal (PAT)

Puedes generar un token aquí:
https://github.com/settings/tokens

## Paso 3. Entrar al repositorio
```bash
cd scrnaseq-workshop
```

## Paso 4. Verificar que todo se descargó correctamente
```bash
ls
```

Deberías ver directorios simlares a los siguiente:
docs/
scripts/
data/
environment/

**Notas importantes**

Si git clone falla con SSH, usa la opción HTTPS.

Todos los scripts del workshop deben ejecutarse desde la raíz del proyecto.

No modifiques la estructura de carpetas.

Para actualizar el repositorio durante el curso, utiliza:
```bash
git pull
```

## Recursos de consulta

Si deseas profundizar o resolver dudas adicionales sobre Git y GitHub, puedes consultar los siguientes recursos:

### Documentación oficial

- Documentación oficial de Git:  
  https://git-scm.com/docs

- GitHub Docs – Clonar un repositorio:  
  https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository

- GitHub Docs – Generar una llave SSH:  
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh

- GitHub Docs – Crear un Personal Access Token (PAT):  
  https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

---

### Recursos introductorios recomendados

- Git Book (gratuito y muy completo):  
  https://git-scm.com/book/en/v2

- Introducción visual a Git (Atlassian):  
  https://www.atlassian.com/git/tutorials

- Git Cheat Sheet (resumen de comandos básicos):  
  https://education.github.com/git-cheat-sheet-education.pdf

---

### Comandos básicos que usamos en el workshop

```bash
git clone   # Clonar un repositorio
git pull    # Actualizar el repositorio
git status  # Ver el estado del repositorio
git add     # Preparar cambios
git commit  # Guardar cambios
git push    # Subir cambios a GitHub
```

---

CSC. Febrero 24, 2026