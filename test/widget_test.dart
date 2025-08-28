// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Screen navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that Screen 1 is displayed
    expect(find.text('This is Screen 1'), findsOneWidget);
    expect(find.text('Go to Screen 1'), findsOneWidget);
    expect(find.text('Go to Screen 2'), findsOneWidget);
    expect(find.text('Go to Screen 3'), findsOneWidget);

    // Tap the "Go to Screen 2" button and trigger a frame.
    await tester.tap(find.text('Go to Screen 2'));
    await tester.pumpAndSettle();

    // Verify that Screen 2 is displayed
    expect(find.text('This is Screen 2'), findsOneWidget);
    expect(find.text('Go to Screen 1'), findsOneWidget);
    expect(find.text('Go to Screen 2'), findsOneWidget);
    expect(find.text('Go to Screen 3'), findsOneWidget);

    // Tap the "Go to Screen 3" button and trigger a frame.
    await tester.tap(find.text('Go to Screen 3'));
    await tester.pumpAndSettle();

    // Verify that Screen 3 is displayed
    expect(find.text('This is Screen 3'), findsOneWidget);
    expect(find.text('Go to Screen 1'), findsOneWidget);
    expect(find.text('Go to Screen 2'), findsOneWidget);
    expect(find.text('Go to Screen 3'), findsOneWidget);
  });
}
