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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnBeNY_5dV_elmaoM-nxNW3VG0K6MaFao',
    appId: '1:451131215714:android:baf52957cc5d345551e63b',
    messagingSenderId: '451131215714',
    projectId: 'wechat-23f1e',
    storageBucket: 'wechat-23f1e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCajDpRPSRwh0d-rS-Pfdlb7nG03lji0qE',
    appId: '1:451131215714:ios:ecde91fe05b4aec251e63b',
    messagingSenderId: '451131215714',
    projectId: 'wechat-23f1e',
    storageBucket: 'wechat-23f1e.appspot.com',
    androidClientId: '451131215714-jclkgv8oto538245lbnvgk1k808eav56.apps.googleusercontent.com',
    iosClientId: '451131215714-9p6hmufkvtba9gkqjf9utb3d45n1q781.apps.googleusercontent.com',
    iosBundleId: 'com.example.myChat',
  );
}
