import 'package:flutter/cupertino.dart';
import 'package:getxapi/theme/theme_controller.dart';

class TextButton extends StatelessWidget {
  final Color bgColor;
  final VoidCallback onTap;
  final double myHeight;
  final double myWidth;


  TextButton({
    Key? key,
    required this.bgColor,
    required this.onTap,
    this.myHeight = 50,
    this.myWidth = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return FloatingActionButton(
      elevation: 0,
      mini: false,
      onPressed: onTap,
      child: icon,
      backgroundColor: bgColor,
    );*/

    return TextButton(bgColor: ThemeController().currentTheme().buttonBg, onTap: onTap);
  }

}