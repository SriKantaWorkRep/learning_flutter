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
        return macos;
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
    apiKey: 'AIzaSyDqpZTRXBW6uG_ZXFg6GLVEEzUkSFcnNIs',
    appId: '1:86301826070:web:0176f9f7d2329b10d66937',
    messagingSenderId: '86301826070',
    projectId: 'bloc-login-a7072',
    authDomain: 'bloc-login-a7072.firebaseapp.com',
    storageBucket: 'bloc-login-a7072.appspot.com',
    measurementId: 'G-MLKSW5S28N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYZc0VGEu9K8S-XMxCDPjis1DjpBJ5V60',
    appId: '1:86301826070:android:087c5d12126371bfd66937',
    messagingSenderId: '86301826070',
    projectId: 'bloc-login-a7072',
    storageBucket: 'bloc-login-a7072.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAQJzJNqvQRz3fLnmRe767wOVk0w9CBxs',
    appId: '1:86301826070:ios:113d3387580bf30fd66937',
    messagingSenderId: '86301826070',
    projectId: 'bloc-login-a7072',
    storageBucket: 'bloc-login-a7072.appspot.com',
    iosBundleId: 'com.example.dealdoxIntegrated',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAQJzJNqvQRz3fLnmRe767wOVk0w9CBxs',
    appId: '1:86301826070:ios:27ee4027ee495762d66937',
    messagingSenderId: '86301826070',
    projectId: 'bloc-login-a7072',
    storageBucket: 'bloc-login-a7072.appspot.com',
    iosBundleId: 'com.example.dealdoxIntegrated.RunnerTests',
  );
}
