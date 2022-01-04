import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/counter.dart';

void main() {
  group('Counter', () {
    test('value should be 0 at the beginning', () {
      final counter = Counter();

      expect(counter.value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });

  group('String', () {
    test('should return the same string', () {
      var string = 'foo,bar,baz';
      expect(string.split(','), equals(['foo', 'bar', 'baz']));
      expect(string.split('o'), equals(['f', '', ',bar,baz']),
          reason: 'should ignore the non-matching characters');
    });
  });

  group('int', () {
    test('should return the same int', () {
      expect(11.remainder(3), equals(2));
      expect(12.remainder(5), equals(2));
    });

    test('.toRadixString() returns a hex string', () {
      expect(11.toRadixString(16), equals('b'));
      expect(11.toRadixString(11), equals('10'));
      expect(11.toRadixString(9), equals('12'));
      expect(11.toRadixString(8), equals('13'));
    });
  });
}
