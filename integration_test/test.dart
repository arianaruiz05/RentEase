import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:rent_ease/flutter_flow/flutter_flow_drop_down.dart';
import 'package:rent_ease/flutter_flow/flutter_flow_icon_button.dart';
import 'package:rent_ease/flutter_flow/flutter_flow_widgets.dart';
import 'package:rent_ease/flutter_flow/flutter_flow_theme.dart';
import 'package:rent_ease/index.dart';
import 'package:rent_ease/main.dart';
import 'package:rent_ease/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:rent_ease/backend/firebase/firebase_config.dart';
import 'package:rent_ease/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Login Test', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AccountLoginSignupWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('LoginTab_lptw')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('LoginTab_lptw')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Login-Email_l6a9')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_l6a9')), 'arianaruiz@uri.edu');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Login-Password_da90')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_da90')), 'pass123');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('loginButton_xqjb')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Properties'), findsWidgets);
  });

  testWidgets('login Fail', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AccountLoginSignupWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    await tester.tap(find.byKey(const ValueKey('TabBar_ae9j')));
    await tester.tap(find.byKey(const ValueKey('LoginTab_lptw')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('LoginTab_lptw')));
    await tester.enterText(find.byKey(const ValueKey('Login-Email_l6a9')),
        'katherine.ciulla@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_da90')), 'password2');
    await tester.tap(find.byKey(const ValueKey('loginButton_xqjb')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    expect(find.text('Sign up with Google or Facebook'), findsOneWidget);
  });

  testWidgets('Succesful Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Email_8o0v')), 'ljones@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Password_ytkh')), 'password');
    await tester.enterText(
        find.byKey(const ValueKey('TextField_cz4m')), 'password');
    await tester.tap(find.byKey(const ValueKey('signupButton_ycpn')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Are you a student or landlord?'), findsWidgets);
  });

  testWidgets('accountAlreadyExists', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AccountLoginSignupWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Email_8o0v')), 'uitesting@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Password_ytkh')), '1234567');
    await tester.enterText(
        find.byKey(const ValueKey('TextField_cz4m')), '1234567');
    await tester.tap(find.byKey(const ValueKey('signupButton_ycpn')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('loginButton_xqjb')), findsNothing);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
