# check_root_jailbreak

A Flutter plugin project for checking Root on Android and Jailbreak on iOS

## *Getting Started*

### *Install*
```dart
$ flutter pub add check_root_jailbreak
```
This will add a line like this to your package's pubspec.yaml:
```dart
dependencies:
  check_root_jailbreak: ^0.0.4
  ```

### *Configuration*
#### Android
No configuration is needed.
#### iOS
Add this code to the Info.plist file under the /ios/Runner/ folder.
```swift
	<key>LSApplicationQueriesSchemes</key>
	<array>
		<string>cydia</string>
	</array>

```

### *Usage*
```dart
final _checkRootJailbreakPlugin = CheckRootJailbreak();
bool? isRootAvailable;
try {
  isRootAvailable = await _checkRootJailbreakPlugin.isRootAvailable(); 
} on PlatformException {
  isRootAvailable = null;
}
```


