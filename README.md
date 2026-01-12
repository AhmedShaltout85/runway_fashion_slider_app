# 🎨 Runway Fashion Slider App

A modern Flutter application featuring an elegant fashion slider interface inspired by runway designs.

[![Flutter Version](https://img.shields.io/badge/Flutter-3.9.2+-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-3.9.2+-blue.svg)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-Private-red.svg)](LICENSE)

## 📋 Table of Contents

- [About](#about)
- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Project Structure](#project-structure)
- [Design](#design)
- [Localization](#localization)
- [Building & Running](#building--running)
- [Contributing](#contributing)
- [Contact](#contact)

## 📖 About

Runway Fashion Slider App is a Flutter-based mobile application that showcases fashion content through an interactive slider interface. The app is designed with a focus on aesthetics and smooth user experience, perfect for fashion brands, boutiques, or fashion enthusiasts.

**Version:** 1.0.0+1

## ✨ Features

- 🎭 **Interactive Fashion Slider** - Smooth and elegant content browsing
- 🌍 **Multi-language Support** - Built-in localization system
- 🎨 **Custom Splash Screen** - Professional native splash screen
- 📱 **Cross-platform** - Support for iOS, Android, Web, Linux, macOS, and Windows
- 🖼️ **SVG Support** - Scalable vector graphics for crisp visuals
- 🎯 **Material Design** - Modern UI following Material Design guidelines

## 🖼️ Screenshots

*Coming soon*

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- Flutter SDK (^3.9.2)
- Dart SDK (^3.9.2)
- Android Studio / Xcode (for mobile development)
- VS Code or Android Studio (recommended IDEs)

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/AhmedShaltout85/runway_fashion_slider_app.git
cd runway_fashion_slider_app
```

1. **Install dependencies**

```bash
flutter pub get
```

1. **Generate localization files**

```bash
flutter gen-l10n
```

1. **Generate splash screen**

```bash
flutter pub run flutter_native_splash:create
```

1. **Run the app**

```bash
flutter run
```

## 📦 Dependencies

### Production Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| [flutter](https://flutter.dev/) | SDK | Core Flutter framework |
| [cupertino_icons](https://pub.dev/packages/cupertino_icons) | ^1.0.8 | iOS-style icons |
| [flutter_svg](https://pub.dev/packages/flutter_svg) | Latest | SVG rendering support |
| [flutter_localization](https://pub.dev/packages/flutter_localization) | ^0.3.3 | Internationalization support |
| [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) | ^2.4.7 | Native splash screen generation |

### Development Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| [flutter_test](https://flutter.dev/) | SDK | Testing framework |
| [flutter_lints](https://pub.dev/packages/flutter_lints) | ^5.0.0 | Linting rules |

## 📁 Project Structure

```
runway_fashion_slider_app/
├── android/                # Android-specific files
├── assets/
│   └── images/            # Image assets
├── ios/                   # iOS-specific files
├── lib/                   # Application source code
│   ├── main.dart         # Application entry point
│   └── ...               # Other Dart files
├── linux/                # Linux-specific files
├── macos/                # macOS-specific files
├── test/                 # Unit and widget tests
├── web/                  # Web-specific files
├── windows/              # Windows-specific files
├── pubspec.yaml          # Project dependencies
├── analysis_options.yaml # Linting configuration
├── flutter_native_splash.yaml # Splash screen config
└── README.md            # This file
```

## 🎨 Design

The app design is based on a Figma prototype. You can view the complete design specifications here:

[**View Figma Design →**](https://www.figma.com/design/DR5fTo864JE4Uh5vSw2GH7/Runway-Fashion-Slider-App--Community---Copy-?node-id=0-2632&t=hACvjf1Qfws0HqyX-0)

## 🌐 Localization

This project supports multiple languages using Flutter's localization system. The `generate: true` flag in `pubspec.yaml` enables automatic generation of localization files.

To add new languages:

1. Create `.arb` files in `lib/l10n/`
2. Run `flutter gen-l10n` to generate localization files
3. Import and use them in your app

## 🔨 Building & Running

### Development Mode

```bash
# Run on connected device/emulator
flutter run

# Run on specific platform
flutter run -d chrome          # Web
flutter run -d macos           # macOS
flutter run -d windows         # Windows
```

### Release Mode

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

## 📱 Platform Support

| Platform | Status |
|----------|--------|
| Android  | ✅ Supported |
| iOS      | ✅ Supported |
| Web      | ✅ Supported |
| Linux    | ✅ Supported |
| macOS    | ✅ Supported |
| Windows  | ✅ Supported |

## 🤝 Contributing

This is a private project. If you have access and would like to contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is private and not published to pub.dev. All rights reserved.

## 👤 Contact

**Ahmed Shaltout**

- GitHub: [@AhmedShaltout85](https://github.com/AhmedShaltout85)
- Project Link: [https://github.com/AhmedShaltout85/runway_fashion_slider_app](https://github.com/AhmedShaltout85/runway_fashion_slider_app)

## 🙏 Acknowledgments

- [Flutter](https://flutter.dev/) - The amazing framework
- [pub.dev](https://pub.dev/) - Flutter package repository
- Design inspired by runway fashion aesthetics

---

Made with ❤️ using Flutter
