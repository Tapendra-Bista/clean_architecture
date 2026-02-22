# 🏗️ Clean Architecture Flutter Demo

A robust, production-ready Flutter demonstration project implementing **Clean Architecture**, **Riverpod** for state management, and **Hive** for local persistence.

---
## Screenshot 

<img width="434" height="262" alt="Screenshot 2026-02-22 130221" src="https://github.com/user-attachments/assets/a95b9010-b461-4375-8dfa-5cbd508e513c" />


<img width="377" height="961" alt="Screenshot 2026-02-22 130351" src="https://github.com/user-attachments/assets/83102ae2-76d3-4142-a574-af02460cc786" />

<img width="335" height="746" alt="Screenshot 2026-02-22 125451" src="https://github.com/user-attachments/assets/4a1ed1d9-3f32-4706-b46c-42f154bb885e" />


## 🌟 Overview

This project serves as a comprehensive example of how to build scalable, maintainable, and testable Flutter applications using modern best practices. It demonstrates the separation of concerns by splitting the application into three core layers: **Data**, **Domain**, and **Presentation**.

The app fetches photo data from a remote API and implements an offline-first strategy using Hive for local caching.

## 🚀 Key Features

- **Clean Architecture**: Strict separation of concerns for better maintainability.
- **Offline-First**: robust local caching logic using Hive CE.
- **State Management**: Leveraging the power of Riverpod 3.0.
- **Type-Safe Networking**: Using Dio and Retrofit for API interactions.
- **Functional Programming**: Utilizing `fpdart` for elegant error handling (`Either` type).
- **Code Generation**: Automated boilerplate reduction with Freezed and JSON Serializable.
- **Feature-Based Structure**: Organized by features (`home`, `demo`) for scalability.

## 🛠️ Tech Stack

| Category | Technology |
| :--- | :--- |
| **Framework** | [Flutter](https://flutter.dev/) |
| **State Management** | [Riverpod](https://riverpod.dev/) |
| **Networking** | [Dio](https://pub.dev/packages/dio) & [Retrofit](https://pub.dev/packages/retrofit) |
| **Database/Cache** | [Hive CE](https://pub.dev/packages/hive_ce) |
| **Data Modeling** | [Freezed](https://pub.dev/packages/freezed) |
| **Logic/Utilities** | [fpdart](https://pub.dev/packages/fpdart) |

---

## 📂 Project Structure

The project follows a **Feature-First** Clean Architecture approach:

```text
lib/
├── core/               # Shared utilities, constants, and base classes
├── features/           # Feature-specific modules
│   └── home/           # Home feature
│       ├── data/       # Repositories implementation, Data sources, Models
│       ├── domain/     # Entities, Repositories interface, Usecases
│       └── presentation/ # UI Components, State providers (Riverpod)
├── app.dart            # Root widget and application configuration
└── main.dart           # Entry point and dependency initialization
```

### The Three Layers:
1.  **Domain Layer (Gold Standard)**: Contains entities and repository interfaces. It is completely independent of other layers and contains the core business logic.
2.  **Data Layer**: Responsible for fetching data from remote (API) or local (Hive) sources. It implements the interfaces defined in the domain layer.
3.  **Presentation Layer**: Responsible for the UI and state management. It communicates with the Domain layer via Providers.

---

## 🛠️ Setup & Installation

### Prerequisites
- Flutter SDK (v3.11.0 or higher)
- Dart SDK

### Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/cln_arch_demo.git
   cd cln_arch_demo
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run Code Generation:**
   Since this project uses code generation for Freezed, Retrofit, and Hive, run:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Launch the application:**
   ```bash
   flutter run
   ```

---

## 🧪 Testing

The project is structured to be highly testable. You can run tests using:
```bash
flutter test
```

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
