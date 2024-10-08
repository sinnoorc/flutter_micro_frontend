# Flutter Micro Front-End Architecture 🚀

This project follows a **micro front-end architecture** in Flutter, designed for scalability, maintainability, and modular development. The goal is to separate different aspects of the application (such as admin and user functionality) while reusing shared components to improve efficiency and reduce redundancy. 🛠️

## Project Structure 🗂️

The repository is organized into multiple directories to reflect the modular approach. Below is an overview of the structure:

```<>
.
├── apps/
│   ├── admin_app/          # Admin-specific app logic and UI
│   └── user_app/           # User-specific app logic and UI
├── packages/
│   ├── config/             # Config package for managing environment-specific configurations
├── scripts/
│   ├── build_apk.sh        # Shell script to build APKs
│   ├── coverage.sh         # Shell script to run code coverage
│
├── shared/                 # Shared components such as widgets, utilities, and services
├── melos.yaml              # Melos configuration for monorepo management
└── pubspec.yaml            # General dependencies for the monorepo
```

### Directory Breakdown 📁

- **`apps/`**: Contains separate apps for different roles:
  - **`admin_app/`**: Holds the admin app, including admin-specific UI, screens, and features. 👩‍💼
  - **`user_app/`**: Contains the user app, designed for the customer-facing side. 👥

- **`packages/`**: Includes reusable code modules that are shared across apps.
  - **`config/`**: This package holds configuration settings, such as environment-specific variables and other common configuration utilities. ⚙️

- **`scripts/`**: Contains shell scripts for common tasks:
  - **`build_apk.sh`**: Automates the APK build process. 📦
  - **`coverage.sh`**: Runs test coverage for the project. 📊

- **`shared/`**: Holds shared components like reusable widgets, utility functions, and common services that can be used across both `admin_app` and `user_app`. 🔄

- **`melos.yaml`**: Configuration file for **Melos**, a tool used for managing multiple Flutter and Dart packages in a monorepo. This helps streamline the workflow for managing different modules in the project. 🛠️

- **`pubspec.yaml`**: Defines general dependencies for the entire monorepo. 📜

## Setting Up the Project ⚙️

### Prerequisites ✅

- **Melos**: Install Melos globally to manage the monorepo.

  ```sh
  dart pub global activate melos
  ```

### Bootstrap the Project 🚀

Run the following command to bootstrap all the packages and set up the project:

```sh
melos bootstrap
```

This command links all the packages and sets up dependencies for each module. 🔗

## Scripts 📜

The `scripts/` directory contains shell scripts that simplify common development tasks:

- **Building APKs**: 📦

  ```sh
  ./scripts/build_apk.sh
  ```

  This script will build the APKs for the apps in the `apps/` directory.

- **Running Code Coverage**: 📊

  ```sh
  ./scripts/coverage.sh
  ```

  Use this script to generate code coverage reports.

## Melos Package List 📦

To list all the packages in the monorepo, you can use the following command:

```sh
melos list -l
```

Example output:

```<>
admin_app      0.1.0 apps/admin_app        PRIVATE
common_widgets 0.1.0 shared/common_widgets PRIVATE
config         1.0.0 packages/config
user_app       0.1.0 apps/user_app         PRIVATE
```

This command helps you quickly see the version and location of each package in the monorepo. 🔍
