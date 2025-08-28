# Flutter Application with Bazel Build System

This project is set up to work with both Flutter's default build system and Bazel build system. The Bazel configuration is isolated in the `bazel/` directory to prevent conflicts with Flutter's build system.

## Project Structure

```
lib/
├── main.dart                 # Main application entry point
├── utils/
│   └── autosize_text.dart    # AutoSize text component
└── screens/
    ├── screen1/
    │   └── screen1.dart      # Screen 1 with navigation
    ├── screen2/
    │   └── screen2.dart      # Screen 2 with navigation
    └── screen3/
        └── screen3.dart      # Screen 3 with navigation

bazel/                        # Bazel configuration directory
├── WORKSPACE                 # Main Bazel workspace configuration
├── BUILD                     # Main build file for the Flutter app
├── .bazelrc                  # Bazel configuration options
├── .bazelignore              # Files to ignore during Bazel builds
└── third_party/              # External dependencies configuration
    ├── flutter_sdk/
    │   └── BUILD
    ├── dart_sdk.BUILD
    └── android_sdk.BUILD
```

## Using Flutter (Default)

To run the application using Flutter's default build system:

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run

# Build for Android
flutter build apk

# Build for iOS
flutter build ios

# Run tests
flutter test
```

## Using Bazel

To use Bazel build system:

### Prerequisites

1. Install Bazel: https://bazel.build/install
2. Install Flutter SDK
3. Install Dart SDK

### Build Commands

```bash
# Navigate to bazel directory
cd bazel

# Build the Flutter app with Bazel
bazel build //:flutter_application_1

# Run the app with Bazel
bazel run //:flutter_application_1

# Clean Bazel cache
bazel clean

# Query dependencies
bazel query --output=location //:flutter_application_1
```

### Bazel Configuration Files

- `bazel/WORKSPACE`: Main Bazel workspace configuration
- `bazel/BUILD`: Main build file for the Flutter app
- `bazel/.bazelrc`: Bazel configuration options
- `bazel/.bazelignore`: Files to ignore during Bazel builds
- `bazel/third_party/`: External dependencies configuration

## Features

### Screens
- **Screen 1**: Main screen with navigation buttons
- **Screen 2**: Second screen with navigation buttons  
- **Screen 3**: Third screen with navigation buttons

### Components
- **AutoSizeText**: Text component that automatically adjusts font size based on screen width
- **Navigation**: Each screen has buttons to navigate to all three screens

### Build System Benefits

#### Flutter Build System
- Standard Flutter development workflow
- Hot reload support
- IDE integration
- Platform-specific builds

#### Bazel Build System
- Incremental builds
- Parallel execution
- Reproducible builds
- Better caching
- Multi-language support
- Scalable for large projects

## Important Notes

1. **Build System Separation**: The Bazel configuration is isolated in the `bazel/` directory to prevent conflicts with Flutter's build artifacts.

2. **Dependencies**: Both build systems can coexist in the same project without interference.

3. **Development**: Use Flutter's build system for development and Bazel for production builds or CI/CD.

4. **Platform Support**: Bazel configuration supports Android builds by default. Modify `bazel/.bazelrc` for other platforms.

5. **Current Bazel Setup**: The current Bazel configuration is a simplified demonstration. For a full Flutter build with Bazel, you would need to integrate with Flutter's build system or use specialized Flutter rules.

## Troubleshooting

### Bazel Issues
- Ensure Bazel is properly installed: `bazel --version`
- Clean cache: `bazel clean --expunge`
- Check dependencies: `bazel query --output=location //...`
- Make sure you're in the `bazel/` directory when running Bazel commands

### Flutter Issues
- Run `flutter doctor` to check Flutter installation
- Clean Flutter cache: `flutter clean`
- Get dependencies: `flutter pub get`

## Next Steps

1. Add more screens and features
2. Implement state management
3. Add tests for both build systems
4. Configure CI/CD pipelines
5. Add platform-specific configurations
6. Integrate full Flutter build support in Bazel
