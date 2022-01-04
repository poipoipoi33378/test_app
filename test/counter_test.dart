import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/counter.dart';

void main() {
  group('String', () {
    test('should return the same string', () {
      var string = 'foo,bar,baz';
      expect(string.split(','), equals(['foo', 'bar', 'baz']));
    });
  });

  group('int', () {
    test('should return the same int', () {
      expect(11.remainder(3), equals(2));
    });
  });
}
