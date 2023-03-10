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
    apiKey: 'AIzaSyBFKleKfIRa81cag0LN6TlHHjLgYj3d2KY',
    appId: '1:382755592400:web:89952280422871891fe6d5',
    messagingSenderId: '382755592400',
    projectId: 'ibnu-firebase-a2eb5',
    authDomain: 'ibnu-firebase-a2eb5.firebaseapp.com',
    storageBucket: 'ibnu-firebase-a2eb5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDe6SXjYCm3fRriQAdm09fhObxbHHJ3RJI',
    appId: '1:382755592400:android:fde9c878f3653bd01fe6d5',
    messagingSenderId: '382755592400',
    projectId: 'ibnu-firebase-a2eb5',
    storageBucket: 'ibnu-firebase-a2eb5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWsDjHSHm1xBZ4GLWq8Vkpy2gbiCR__BQ',
    appId: '1:382755592400:ios:ba43f7813b85ff541fe6d5',
    messagingSenderId: '382755592400',
    projectId: 'ibnu-firebase-a2eb5',
    storageBucket: 'ibnu-firebase-a2eb5.appspot.com',
    iosClientId: '382755592400-a6k0agnoqgghk9ab2v41eangkldh3nii.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseIntroduction',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWsDjHSHm1xBZ4GLWq8Vkpy2gbiCR__BQ',
    appId: '1:382755592400:ios:ba43f7813b85ff541fe6d5',
    messagingSenderId: '382755592400',
    projectId: 'ibnu-firebase-a2eb5',
    storageBucket: 'ibnu-firebase-a2eb5.appspot.com',
    iosClientId: '382755592400-a6k0agnoqgghk9ab2v41eangkldh3nii.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseIntroduction',
  );
}
