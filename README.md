# native_collator

Locale-aware string sorting via native ICU collation on Android and iOS.

## Features
- Accurate locale-specific sorting (e.g. Polish: "s" < "ś" < "t")
- Native bindings using `Collator` on Android and `String.compare(_:locale:)` on iOS

## Usage
```dart
import 'package:native_collator/native_collator.dart';

void main() async {
  final items = ['świnia', 'szafa', 'sok', 'tata'];
  final sorted = await NativeCollator.sort(items, 'pl');
  print(sorted); // Correct Polish alphabetical order
}
```

## Supported locales
Pass any BCP-47 language tag, e.g.:
- `pl` – Polish
- `de` – German
- `es` – Spanish
- `en-GB`, `en-US` – English
- `ja`, `ko` – Japanese, Korean

## Getting Started
Add it to your `pubspec.yaml`:
```yaml
dependencies:
  native_collator: ^1.0.0
```

## License
MIT License

