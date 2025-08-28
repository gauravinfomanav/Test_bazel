package(default_visibility = ["//visibility:public"])

# Define the Flutter application target
filegroup(
    name = "flutter_app_sources",
    srcs = [
        # These would be the actual Dart files in a real setup
        # For now, we're just defining the structure
    ],
    data = [
        # Configuration files
    ],
)

# Flutter runner for iOS Simulator
genrule(
    name = "flutter_ios_runner",
    srcs = [":flutter_app_sources"],
    outs = ["flutter_ios_runner.sh"],
    cmd = """cat > $@ << 'EOF'
#!/bin/bash
cd "/Users/gaurav/Documents/Test_project/flutter_application_1"
echo "Starting Flutter app on iOS Simulator..."
flutter emulators --launch apple_ios_simulator
sleep 5
flutter run -d apple_ios_simulator
EOF
chmod +x $@""",
    message = "Creating Flutter iOS runner",
    executable = True,
)

# Flutter runner for Android device/emulator
genrule(
    name = "flutter_android_runner",
    srcs = [":flutter_app_sources"],
    outs = ["flutter_android_runner.sh"],
    cmd = """cat > $@ << 'EOF'
#!/bin/bash
cd "/Users/gaurav/Documents/Test_project/flutter_application_1"
echo "Starting Flutter app on Android device..."
flutter run -d 127.0.0.1:5555
EOF
chmod +x $@""",
    message = "Creating Flutter Android runner",
    executable = True,
)

# Flutter runner for Chrome (web)
genrule(
    name = "flutter_web_runner",
    srcs = [":flutter_app_sources"],
    outs = ["flutter_web_runner.sh"],
    cmd = """cat > $@ << 'EOF'
#!/bin/bash
cd "/Users/gaurav/Documents/Test_project/flutter_application_1"
echo "Starting Flutter app on Chrome..."
flutter run -d chrome
EOF
chmod +x $@""",
    message = "Creating Flutter Web runner",
    executable = True,
)

# Default Flutter runner (tries multiple platforms)
genrule(
    name = "flutter_application_1",
    srcs = [":flutter_app_sources"],
    outs = ["app_runner.sh"],
    cmd = """cat > $@ << 'EOF'
#!/bin/bash
cd "/Users/gaurav/Documents/Test_project/flutter_application_1"
echo "Starting Flutter app..."

# Check available devices
echo "Available devices:"
flutter devices

echo ""
echo "Choose platform:"
echo "1. iOS Simulator"
echo "2. Android Device"
echo "3. Chrome (Web)"
echo "4. Auto-detect (default)"

read -p "Enter choice (1-4): " choice

case $$choice in
    1)
        echo "Launching on iOS Simulator..."
        flutter emulators --launch apple_ios_simulator
        sleep 5
        flutter run -d apple_ios_simulator
        ;;
    2)
        echo "Launching on Android device..."
        flutter run -d 127.0.0.1:5555
        ;;
    3)
        echo "Launching on Chrome..."
        flutter run -d chrome
        ;;
    *)
        echo "Auto-detecting platform..."
        flutter run
        ;;
esac
EOF
chmod +x $@""",
    message = "Building Flutter application",
    executable = True,
)
