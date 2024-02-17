import 'package:fl_chart/src/extensions/rect_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RectExtension', () {
    group('addPadding', () {
      test('should not affect with EdgeInsets.zero', () {
        const rect = Rect.fromLTWH(1, 1, 1, 1);
        const padding = EdgeInsets.zero;

        expect(rect.applyPadding(padding), rect);
      });

      // Adjust tooltip start heights?

      test('should add correct amount of padding', () {
        const rect = Rect.fromLTRB(25, 50, 100, 100);
        const padding = EdgeInsets.symmetric(vertical: 16, horizontal: 8);
        expect(
          rect.applyPadding(padding),
          Rect.fromLTRB(
            25 - padding.left,
            50 - padding.top,
            100 + padding.right,
            100 + padding.bottom,
          ),
        );
      });
    });

    group('addMargin', () {
      test('should not affect with EdgeInsets.zero', () {
        const rect = Rect.fromLTWH(1, 1, 1, 1);
        const margin = EdgeInsets.zero;

        expect(rect.applyMargin(margin).center, rect.center);
      });

      test('should move rect the correct amount with right padding', () {
        const rect = Rect.fromLTRB(25, 250, 100, 300);
        const margin = EdgeInsets.only(right: 10);
        expect(
          rect.applyMargin(margin).center,
          Offset(
            rect.center.dx - 10,
            rect.center.dy,
          ),
        );
      });

      test('should move rect the correct amount with left padding', () {
        const rect = Rect.fromLTRB(25, 250, 100, 300);
        const margin = EdgeInsets.only(left: 10);
        expect(
          rect.applyMargin(margin).center,
          Offset(
            rect.center.dx + 10,
            rect.center.dy,
          ),
        );
      });

      test('should move rect the correct amount with bottom padding', () {
        const rect = Rect.fromLTRB(25, 250, 100, 300);
        const margin = EdgeInsets.only(bottom: 10);
        expect(
          rect.applyMargin(margin).center,
          Offset(
            rect.center.dx,
            rect.center.dy - 10,
          ),
        );
      });

      test('should move rect the correct amount with top padding', () {
        const rect = Rect.fromLTRB(25, 250, 100, 300);
        const margin = EdgeInsets.only(top: 10);
        expect(
          rect.applyMargin(margin).center,
          Offset(
            rect.center.dx,
            rect.center.dy + 10,
          ),
        );
      });
    });
  });
}
