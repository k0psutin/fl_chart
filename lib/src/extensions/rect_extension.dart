import 'package:flutter/material.dart';

extension RectExtension on Rect {
  Rect applyPadding(EdgeInsets padding) {
    return Rect.fromLTRB(
      left - padding.left,
      top - padding.top,
      right + padding.right,
      bottom + padding.bottom,
    );
  }

  Rect applyMargin(EdgeInsets margin) => Rect.fromCenter(
        center: Offset(
          center.dx + margin.horizontal,
          center.dy - margin.vertical,
        ),
        width: width,
        height: height,
      );
}
