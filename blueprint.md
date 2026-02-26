# Blueprint de la Aplicación Barbaslocas Peluca

## Visión General

Este documento detalla la estructura, características y plan de desarrollo de la aplicación "Barbaslocas Peluca", una plataforma móvil diseñada para conectar a clientes con barberos, permitiendo agendar citas y explorar perfiles y novedades.

## Características Implementadas

### Flujo de Autenticación

- **Pantalla de Bienvenida (`splash_screen.dart`):** Una pantalla de inicio con el logo de la aplicación que redirige automáticamente a la pantalla de inicio de sesión después de 3 segundos.
- **Inicio de Sesión (`login_screen.dart`):** Permite a los usuarios existentes acceder a la aplicación. Incluye campos para correo y contraseña, y enlaces para registrarse o recuperar la contraseña.
- **Registro de Usuario (`register_screen.dart`):** Un formulario para que nuevos usuarios creen una cuenta, proporcionando su nombre, correo y contraseña.
- **Recuperación de Contraseña (`forgot_password_screen.dart`):** Una pantalla para que los usuarios que han olvidado su contraseña puedan recuperarla a través de su correo electrónico.

### Pantalla Principal (`home_screen.dart`)

- **Navegación Principal:** La pantalla de inicio, a la que se accede después de una autenticación exitosa.
- **Menú Lateral Deslizable (Drawer):** Un menú de hamburguesa en la esquina superior derecha que contiene las siguientes opciones:
    - Perfil
    - Barberos
    - Nosotros
    - Agendar citas
    - Novedades
- **Feed de Contenido:** Un scroll vertical que muestra una serie de tarjetas con imágenes y nombres de usuario, simulando un feed de publicaciones o trabajos de barbería.

### Diseño y Estilo

- **Paleta de Colores:** Basada en los bocetos iniciales, utilizando tonos de azul claro, rojo y rosa pálido.
- **Tipografía:** Estilo de fuente consistente a lo largo de la aplicación, con un énfasis en la legibilidad y la jerarquía visual.
- **Iconografía:** Uso de iconos de Material Design para mejorar la usabilidad y la comprensión visual.

## Plan de Desarrollo Actual

### Próximos Pasos

1.  **Implementar la Navegación del Menú Lateral:**
    -   Crear las pantallas correspondientes a cada una de las opciones del menú: "Perfil", "Barberos", "Nosotros", "Agendar citas" y "Novedades".
    -   Conectar cada elemento del menú a su respectiva pantalla para permitir una navegación fluida.

2.  **Desarrollar la Pantalla de "Perfil":**
    -   Diseñar una pantalla donde el usuario pueda ver y editar su información personal (nombre, foto de perfil, etc.).
    -   Añadir la funcionalidad para cerrar sesión desde el perfil.

3.  **Crear la Pantalla de "Barberos":**
    -   Mostrar una lista de los barberos disponibles en la plataforma.
    -   Permitir a los usuarios ver el perfil de cada barbero, incluyendo sus trabajos, reseñas y disponibilidad.

4.  **Diseñar la Pantalla "Nosotros":**
    -   Proporcionar información sobre la barbería, su historia, misión y valores.

5.  **Implementar el Flujo de "Agendar Citas":**
    -   Crear un calendario interactivo donde los usuarios puedan seleccionar una fecha y hora.
    -   Permitir a los usuarios elegir un barbero y un servicio específico.
    -   Confirmar la cita y mostrarla en una sección de "Mis Citas".

6.  **Desarrollar la Pantalla de "Novedades":**
    -   Mostrar las últimas noticias, promociones y trabajos destacados de la barbería.
