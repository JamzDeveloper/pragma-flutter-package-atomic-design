// test/custom_text_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:design_system_package/design_system_package.dart';

void main() {
  testWidgets('CustomText renders with given text', (
    WidgetTester tester,
  ) async {
    const testText = 'Hola Mundo';

    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomText(testText))),
    );

    expect(find.text(testText), findsOneWidget);
  });
}
