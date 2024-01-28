import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  final Color bgColor;

  CustomShape(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ReceivedMessageScreen extends StatelessWidget {
  const ReceivedMessageScreen({
    Key? key,
    required this.child,
    this.color,
    this.padding,
    required this.messageScreenKey,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final GlobalKey messageScreenKey;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Transform(
            //   alignment: Alignment.center,
            //   transform: Matrix4.rotationY(math.pi),
            //   child: CustomPaint(
            //     painter: CustomShape(Colors.grey[300]!),
            //   ),
            // ),
            Flexible(
              child: Container(
                margin: padding ?? EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: color ?? Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Container(
                  child: child,
                  key: messageScreenKey,
                ),
              ),
            ),
          ],
        ));

    return Padding(
      padding: const EdgeInsets.only(right: 60.0, left: 60.0, top: 0.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 60.0),
          messageTextGroup,
        ],
      ),
    );
  }
}
