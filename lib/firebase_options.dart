
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyAEJXdeNfCHdhaZyzxVFO8dNzB8Lwb7KHI',
    appId: '1:1056480121277:web:79fe1444a39d76d62f42d4',
    messagingSenderId: '1056480121277',
    projectId: 'portfolio-12bed',
    authDomain: 'portfolio-12bed.firebaseapp.com',
    storageBucket: 'portfolio-12bed.appspot.com',
    measurementId: 'G-5QLMDB92B2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXdtPKEnEpGLdGWFCIhgZsk7vSmmko-Lw',
    appId: '1:1056480121277:android:743f48730917107f2f42d4',
    messagingSenderId: '1056480121277',
    projectId: 'portfolio-12bed',
    storageBucket: 'portfolio-12bed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQb8MW1BHAA5otjWaw3RB_FYboQe-0WH4',
    appId: '1:1056480121277:ios:3b8fe2baf54aa5f02f42d4',
    messagingSenderId: '1056480121277',
    projectId: 'portfolio-12bed',
    storageBucket: 'portfolio-12bed.appspot.com',
    iosBundleId: 'com.example.portfolioApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQb8MW1BHAA5otjWaw3RB_FYboQe-0WH4',
    appId: '1:1056480121277:ios:e02ddab5358c924c2f42d4',
    messagingSenderId: '1056480121277',
    projectId: 'portfolio-12bed',
    storageBucket: 'portfolio-12bed.appspot.com',
    iosBundleId: 'com.example.portfolioApp.RunnerTests',
  );
}
