import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabIndicator2 extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) {
    return new _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator2 decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    //offset is the position from where the decoration should be drawn.
    //configuration.size tells us about the height and width of the tab.

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size.width / 2;
    double yAxisPos = offset.dy + configuration.size.height - 5;
    paint.color = Color(0xFF3D3C3C);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(xAxisPos, yAxisPos), ScreenUtil().setSp(3), paint);
  }
}
