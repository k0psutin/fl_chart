import 'package:flutter/widgets.dart';

extension OffsetExtension on Offset {
  Offset applyEdgeInsets(EdgeInsets inset) {
    return Offset(
      dx - inset.right + inset.left,
      dy - inset.bottom + inset.top,
    );
  }
}
