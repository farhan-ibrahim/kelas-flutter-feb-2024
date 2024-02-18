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
    apiKey: 'AIzaSyAbxxKtNNFajf-kjLCIavKnIJa5HyYqUqA',
    appId: '1:796066483917:web:3953d482bb51818d7c2384',
    messagingSenderId: '796066483917',
    projectId: 'my-flutter-app-d5021',
    authDomain: 'my-flutter-app-d5021.firebaseapp.com',
    storageBucket: 'my-flutter-app-d5021.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvACIerE6vFcMVoImwFktugSRf-al6YbY',
    appId: '1:796066483917:android:2feb208f7df1ad217c2384',
    messagingSenderId: '796066483917',
    projectId: 'my-flutter-app-d5021',
    storageBucket: 'my-flutter-app-d5021.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBv5WnPfe5q5myH8dTmnmd9ZjbY_jKTnfo',
    appId: '1:796066483917:ios:40bfe4f16960a89c7c2384',
    messagingSenderId: '796066483917',
    projectId: 'my-flutter-app-d5021',
    storageBucket: 'my-flutter-app-d5021.appspot.com',
    iosBundleId: 'com.example.myFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBv5WnPfe5q5myH8dTmnmd9ZjbY_jKTnfo',
    appId: '1:796066483917:ios:469a4ef83e9883127c2384',
    messagingSenderId: '796066483917',
    projectId: 'my-flutter-app-d5021',
    storageBucket: 'my-flutter-app-d5021.appspot.com',
    iosBundleId: 'com.example.myFlutterApp.RunnerTests',
  );
}