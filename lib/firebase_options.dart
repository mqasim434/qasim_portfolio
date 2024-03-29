// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAEUi-zZDwkh19C0SpKJvUQ4HoThaswga8',
    appId: '1:804126405120:web:8370295bacd375a6cf9ee5',
    messagingSenderId: '804126405120',
    projectId: 'qasim-portfolio',
    authDomain: 'qasim-portfolio.firebaseapp.com',
    storageBucket: 'qasim-portfolio.appspot.com',
    measurementId: 'G-7R4PW6NMH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGyseEnv7s1UP-WAcBPGQ5ZlzDcva8mAY',
    appId: '1:804126405120:android:06cd1c96c18fa222cf9ee5',
    messagingSenderId: '804126405120',
    projectId: 'qasim-portfolio',
    storageBucket: 'qasim-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4cONtSLW3Q43trtHg9j5uUUpqUxb6zSc',
    appId: '1:804126405120:ios:f6d21d6f703b3c72cf9ee5',
    messagingSenderId: '804126405120',
    projectId: 'qasim-portfolio',
    storageBucket: 'qasim-portfolio.appspot.com',
    iosBundleId: 'com.shopifyistic.portfolio.myPortfolio',
  );
}
