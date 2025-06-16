import 'package:flutter_test/flutter_test.dart';
import 'package:native_collator/native_collator.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  test('Sorting test', () async {
    final input = ['świnia', 'szafa', 'sok', 'tata'];
    final expected = ['sok', 'szafa', 'świnia', 'tata'];

    final result = await NativeCollator.sort(input, 'pl');

    expect(result, equals(expected));
  });
}