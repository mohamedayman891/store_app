# 🛍️ Store App

A Flutter application that displays products from an online store using a REST API and allows updating product information.

---

## 📱 Preview

<p align="center">
  <img src="assets/screenshot/update_screen.png" width="250"/>
</p>

---

# ✨ Features

- 🛒 Display all products.
- ✏️ Update product information.
- 🌐 Fetch data from REST API.
- 📱 Responsive and clean UI.
- ⚡ Fast networking using HTTP package.
- ♻️ Reusable custom widgets.

---

# 🛠️ Tech Stack

- Flutter
- Dart
- HTTP
- REST API
- JSON
- StatefulWidget

---

# 📦 Packages

```yaml
dependencies:
  flutter:
    sdk: flutter
  http:
```

---

# 🏗️ Project Structure

The project follows a clean and organized structure.

```text
lib
│
├── core
│   ├── helper
│   │   └── api.dart
│   │
│   ├── model
│   │
│   ├── services
│   │
│   └── widget
│
├── screens
│
└── main.dart
```

---

# 📂 Folder Description

| Folder        | Description                                              |
| ------------- | -------------------------------------------------------- |
| core/helper   | Contains API helper methods for GET, POST, PUT requests. |
| core/model    | Stores product data models.                              |
| core/services | Handles communication with REST APIs.                    |
| core/widget   | Reusable widgets used across the application.            |
| screens       | Contains all application screens.                        |
| main.dart     | Entry point of the application.                          |

---

# 📷 App Screens

## 📝 Update Product

<p align="center">
  <img src="assets/screenshot/update_screen.png" width="300"/>
</p>

The Update Product screen allows users to modify the product title, description, image URL, category, and price before sending the updated data to the server.

---

# 🚀 Getting Started

Clone the repository

```bash
git clone https://github.com/mohamedayman891/store_app.git
```

Go to project

```bash
cd store_app
```

Install packages

```bash
flutter pub get
```

Run the application

```bash
flutter run
```

---

# 👨‍💻 Developer

**Mohamed Ayman**

Flutter Developer

- GitHub: https://github.com/mohamedayman891
- LinkedIn: https://www.linkedin.com/in/mohamed-ayman09

---

## ⭐ If you like this project, don't forget to star the repository.
