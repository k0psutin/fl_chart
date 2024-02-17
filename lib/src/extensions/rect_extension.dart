import 'package:fl_chart/src/extensions/offset_extension.dart';
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
        center: center.applyEdgeInsets(margin),
        width: width,
        height: height,
      );
}
