# 🦜 Denial of Parrot

**Denial of Parrot** es un script interactivo en Bash que automatiza la ejecución de técnicas de Denial of Service (DoS) utilizando la herramienta de red **hping3**. Está diseñado con fines educativos y de pruebas de seguridad en entornos controlados.

> ⚠️ **Este script debe ser utilizado únicamente con fines educativos y en sistemas de prueba bajo tu control.** El uso indebido puede ser ilegal y está en contra de las políticas de muchas redes y proveedores.

---

## 📌 Características

* Menú interactivo en consola con arte ASCII.
* Detección de privilegios de root.
* Verificación e instalación automática de `hping3`.
* Ejecución de 6 tipos de técnicas DoS:

  * SYN Flood
  * ACK Flood
  * FIN Flood
  * UDP Flood
  * ICMP Flood
  * Ping de la Muerte (PoD)

---

## 🔧 Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/jechua712/Denial-of-Parrot.git
```

2. Accede al directorio del proyecto:

```bash
cd Denial-of-Parrot
```

3. Da permisos de ejecución al script:

```bash
chmod +x DoP.sh
```

---

## 🚀 Uso

Ejecuta el script con privilegios de **root**:

```bash
sudo ./DoP.sh
```

Aparecerá un menú interactivo donde podrás seleccionar el tipo de ataque DoS que deseas simular y configurar los parámetros necesarios (IP objetivo, puerto, tamaño de paquete, etc.).

> ℹ️ Pulsa `CTRL+C` en cualquier momento para detener el ataque.

---

## 📚 Requisitos

* Sistema basado en Linux (probado en Debian/Ubuntu).
* `hping3` (se instalará automáticamente si no está presente).

---

## 👨‍💻 Autor

**Jechua712**
[GitHub Profile](https://github.com/jechua712)

---

## 🛡️ Aviso Legal

Este software se proporciona únicamente con fines **educativos**. El autor no se hace responsable del uso indebido del script. Asegúrate de tener permiso explícito antes de realizar pruebas de red o seguridad en cualquier sistema que no te pertenezca.
