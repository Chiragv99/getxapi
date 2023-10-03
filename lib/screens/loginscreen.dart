import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxapi/theme/theme_controller.dart';

import '../common/my_colors.dart';
import '../uttils/route_name.dart';
import '../uttils/uttils.dart';
import '../widget/country_selection_textfield_widget.dart';
import '../widget/fab_button.dart';
import '../widget/wavy_header_widget.dart';

class LoginScreen extends StatefulWidget{



  @override
  State<StatefulWidget> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{
  final TextEditingController _mobileCntrl = TextEditingController();
  final TextEditingController _passCntrl = TextEditingController();

  final FocusNode _mobileNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  TextEditingController passwordController = TextEditingController();

   ThemeController themeController = Get.put(ThemeController());

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    themeController.changeBottomSheetBorderColor(1);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: Container(
          height: Get.height,
          decoration:  BoxDecoration(
              color:  themeController.currentTheme().bG
          ),
          child:   SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                WavyHeader(onBackTap: () {  },),
                 Center(
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 46, right: 46),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: themeController.currentTheme().titleColor,fontSize: themeController.currentTheme().titleSize,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 46, right: 46),
                  child: CountrySelectionTextField(
                    myController: _mobileCntrl,
                    myFocusNode: _mobileNode,
                    hintText: "Enter mobile number",
                    inputAction: TextInputAction.next,
                    inputType: TextInputType.number,
                    onSubmited: (str) {
                    }, onChanged: (String ) {  }, TitleText: 'Mobile Number',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 46, right: 46,top: 10),
                  child: CountrySelectionTextField(
                    myController: _passCntrl,
                    myFocusNode: _passwordNode,
                    hintText: "Enter password",
                    inputAction: TextInputAction.next,
                    inputType: TextInputType.number,
                    onSubmited: (str) {
                    }, onChanged: (String ) {  }, TitleText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 46, right: 46),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          left: 8,
                        ),
                        child: GestureDetector(
                          onTap: () {
                          },
                          child:  Text(
                              "Forgot Password?", style: Theme.of(context).textTheme.headline2
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child:
                  SizedBox(
                    width: Get.width / 2,
                    height: 60,
                    child:  TextButton(onPressed: () {
                      checkValidation();
                    },style:  ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(themeController.currentTheme().buttonBg),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.grey),
                            )
                        )
                    ), child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                    ),),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(padding: const EdgeInsets.only(left: 30),child:
                Align(
                    child:
                    getSignupText()
                )),
              ],
            ),
          )),
    );

  }
  checkValidation(){
     if(_mobileCntrl.text.toString() == ""){
       Utils.showSnackBar(context,"Validation", "Please Enter Mobile Number");
     }else if(_passCntrl.text.toString() == ""){
       Utils.showSnackBar(context,"Validation", "Please Enter Password!");
     }else{
       Utils.showSnackBar(context,"Validation", "Success!");
     }
  }

  getSignupText(){
    return  RichText(text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children:  [
          const TextSpan(
            text: 'Do not have Account?',
            style: TextStyle(color: Colors.grey,fontSize: 12,decoration: TextDecoration.none),
          ),
          TextSpan(
            text: ' SignUp',
            style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,decoration: TextDecoration.none),
            recognizer: TapGestureRecognizer()..onTap = () {
              print("OnTap"+"Signup");
              Get.toNamed(RouteName.signupscreen);
            }
          ),
        ]
    ));
  }
}