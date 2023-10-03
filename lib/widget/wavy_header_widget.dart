import 'package:flutter/cupertino.dart';
import 'package:getxapi/theme/theme_controller.dart';

import '../common/my_colors.dart';

class WavyHeader extends StatelessWidget{

  final bool isBack;
  final VoidCallback onBackTap;

  WavyHeader({
    this.isBack = false,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Stack(
      children:  <Widget>[
        ClipPath(
          clipper:  BottomWaveClipper(),
          child: Container(
            height: 200,
            decoration:  BoxDecoration(
              color: ThemeController().currentTheme().headerBg,
            ),
          ),
        ),
      ],
     );
  }


}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    var secondControlPoint =
    Offset(size.width - (size.width / 2), size.height - 120);
    var secondEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 5);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}