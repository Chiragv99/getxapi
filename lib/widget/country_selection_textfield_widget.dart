
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/theme/theme_controller.dart';

import '../common/my_colors.dart';

class CountrySelectionTextField extends StatefulWidget {

  final TextEditingController myController;
  final FocusNode myFocusNode;
  final String hintText;
  final String TitleText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final EdgeInsetsGeometry myMargin;
  final Function(String) onChanged;
  final Function(String) onSubmited;


  CountrySelectionTextField({
    required this.myController,
    required this.myFocusNode,
    this.myMargin = const EdgeInsets.all(0),
    required this.hintText,
    required this.TitleText,
    this.inputType = TextInputType.number,
    this.inputAction = TextInputAction.done,
    required this.onChanged,
    required this.onSubmited,
  });


  @override
  _CountrySelectionTextFieldState createState() =>
      _CountrySelectionTextFieldState();

}


class _CountrySelectionTextFieldState extends State<CountrySelectionTextField> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Container(
      margin: widget.myMargin,
      height: 52,
      decoration: BoxDecoration(
        color: kShareCodeBg,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 4,
          bottom: 4,
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {

                    },
                    child:  Row(
                      children: <Widget>[

                        SizedBox(
                          width: 5,
                        ),
                        Text(widget.TitleText),
                        Icon(
                          Icons.arrow_drop_down,
                          color: themeController.currentTheme().iconColor,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Opacity(
                opacity: 0.64,
                child: TextField(
                  maxLength: 12,
                  autofocus: false,
                  controller: widget.myController,
                  focusNode:
                  widget.myFocusNode != null ? widget.myFocusNode : null,
                  keyboardType: TextInputType.number,
                  textInputAction: widget.inputAction,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    fillColor: Colors.grey,
                    counterText: "",
                  ),
                  onChanged: (str) {
                    widget.onChanged(str);
                  },
                  onSubmitted: (str) {
                    widget.onSubmited(str);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
