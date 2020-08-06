# Research:  Download / upload files to firebase storage for Flutter Mobile and Web

[firebase_storage](https://pub.dev/packages/firebase_storage) support only Adnroid and iOS platforms. See issue [1972](https://github.com/FirebaseExtended/flutterfire/issues/1972)

## Possible workarounds

1. Use conditional compilation.See [this sample project](https://github.com/AlexVegner/flutter_firebase_storage_samples).
2. Use core package for common bisness logic, services, reusable components and mobile / web package for specific platform implementation
3. Move upload / download files functionality to backend side. Use [Firebase Admin SDK](https://firebase.google.com/docs/storage/gcp-integration) (Rest API with Cloud function/ Cloud Run / Google App Engine / Google Kubernetes etc.)

This project is a starting point for a Flutter application.

## Get Started

### Conditional compilation sample project

- Set your firebase configuration [here](https://github.com/AlexVegner/flutter_firebase_storage_samples/blob/master/web/index.html#L39)

- Run app

    ```
    flutter run -d chrome
    ```
