# 🚌 BusValle

**Sistema integral de gestión de transporte universitario** desarrollado con **Clean Architecture** en Flutter y un **Monolito Modular** en Spring Boot, con tracking GPS en tiempo real.

---

## 📋 Descripción

BusValle es una solución completa para la gestión del transporte universitario que permite a los estudiantes comprar tickets, rastrear buses en tiempo real y reportar incidencias. Los conductores pueden validar abordajes mediante QR y gestionar sus rutas asignadas.

---

## 🛠️ Stack Tecnológico

| Capa | Tecnología | Descripción |
|------|------------|-------------|
| **Frontend** | Flutter | Aplicación móvil multiplataforma con Clean Architecture |
| **Backend** | Spring Boot | API REST con arquitectura de Monolito Modular |
| **Base de Datos** | PostgreSQL + PostGIS | Base de datos relacional con soporte geoespacial |
| **Real-time** | WebSockets + Redis | Comunicación bidireccional para tracking en vivo |
| **Pagos** | Pasarela 3D Secure | Procesamiento seguro de transacciones |

---

## 🏗️ Arquitectura del Proyecto

El proyecto sigue los principios de **Clean Architecture**, separando responsabilidades en capas independientes:

```
lib/
├── core/                    # Elementos compartidos
│   ├── constants/           # Constantes globales (API, sockets)
│   ├── di/                  # Inyección de dependencias (GetIt)
│   ├── error/               # Manejo de excepciones y failures
│   ├── location/            # Utilidades de geolocalización
│   ├── network/             # Cliente HTTP y WebSocket
│   ├── router/              # Navegación centralizada
│   ├── theme/               # Tema y colores de la app
│   ├── usecases/            # Clase base para casos de uso
│   ├── utils/               # Utilidades (formateo, validación)
│   └── widgets/             # Widgets reutilizables
│
└── features/                # Funcionalidades organizadas por dominio
    ├── auth/                # Autenticación (login, registro)
    ├── home/                # Pantalla principal
    ├── management/          # Gestión de reclamos e incidencias
    ├── profile/             # Perfil de usuario
    ├── tickets/             # Compra y gestión de tickets
    └── tracking/            # Seguimiento GPS de buses
```

### Capas por Feature

Cada feature sigue la estructura de Clean Architecture:

```
feature/
├── data/                    # Capa de Datos
│   ├── datasources/         # Fuentes de datos (API, local)
│   ├── models/              # DTOs y mapeo JSON
│   └── repositories/        # Implementación de repositorios
│
├── domain/                  # Capa de Dominio (Lógica de Negocio)
│   ├── entities/            # Entidades de negocio
│   ├── repositories/        # Contratos/interfaces
│   └── usecases/            # Casos de uso
│
└── presentation/            # Capa de Presentación (UI)
    ├── bloc/                # Gestión de estado (BLoC/Cubit)
    ├── views/               # Pantallas
    └── widgets/             # Widgets específicos del feature
```

---

## ✨ Características Principales

### 👨‍🎓 Para Estudiantes
- 📍 **Tracking en tiempo real** - Visualiza la ubicación de los buses en el mapa
- 🎫 **Compra de tickets** - Adquiere paquetes de viajes de forma segura
- 📱 **QR de abordaje** - Código único para validar tu viaje
- 📝 **Reporte de incidencias** - Notifica problemas durante el trayecto

### 🚌 Para Conductores
- ✅ **Validación de pasajeros** - Escaneo de QR para confirmar abordaje
- 🗺️ **Gestión de rutas** - Visualiza tu ruta asignada y paradas
- 📊 **Registro de viajes** - Historial de trayectos realizados

### 🔧 Para Administradores
- 👥 **Gestión de usuarios** - Administra estudiantes y conductores
- 🚍 **Gestión de flota** - Control de buses y asignaciones
- 📈 **Reportes** - Estadísticas de uso y rendimiento
- 🛣️ **Configuración de rutas** - Define rutas y puntos de parada

---

## 🗄️ Modelo de Datos

### Entidades Principales

| Entidad | Descripción |
|---------|-------------|
| `AuthUserEntity` | Credenciales de autenticación (email, password) |
| `UserEntity` | Perfil de usuario con rol (student, driver, admin) |
| `BusEntity` | Información del bus (placa, capacidad) |
| `BusRouteEntity` | Ruta con puntos de inicio, fin y trayecto |
| `TripEntity` | Viaje programado con conductor, bus y horarios |
| `TicketEntity` | Plan de tickets (nombre, precio, cantidad) |
| `PaymentEntity` | Registro de compra de tickets |
| `TransactionEntity` | Registro de uso de ticket en un viaje |
| `ClaimEntity` | Reclamo o incidencia reportada |

---

## 🚀 Instalación

### Prerrequisitos

- Flutter SDK >= 3.0.0
- Dart >= 3.0.0
- Android Studio / VS Code
- Emulador o dispositivo físico

### Pasos

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/busvalle.git
   cd busvalle
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**
   ```bash
   flutter run
   ```

---

## 📦 Dependencias Principales

```yaml
dependencies:
  flutter_bloc: ^8.0.0      # Gestión de estado
  get_it: ^7.0.0            # Inyección de dependencias
  go_router: ^12.0.0        # Navegación
  dio: ^5.0.0               # Cliente HTTP
  socket_io_client: ^2.0.0  # WebSockets
  google_maps_flutter: ^2.0.0  # Mapas
  qr_flutter: ^4.0.0        # Generación de QR
  mobile_scanner: ^3.0.0    # Escaneo de QR
```

---

## 🧪 Testing

```bash
# Ejecutar tests unitarios
flutter test

# Ejecutar tests con cobertura
flutter test --coverage
```

---

## 👥 Autores y Créditos

Este proyecto es propiedad intelectual de **Franco Avaro** e **Ignacio Urjel**, desarrollado como proyecto integrador para la carrera de Ingeniería en Sistemas Informáticos (5to Semestre).

---
© 2026 Franco Avaro & Ignacio Urjel. Todos los derechos reservados.

