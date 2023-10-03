
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/theme/theme_controller.dart';

import '../uttils/route_name.dart';
import '../uttils/uttils.dart';
import '../widget/country_selection_textfield_widget.dart';
import '../widget/wavy_header_widget.dart';

class SignupScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _SignupScreenState();

}

class _SignupScreenState extends State<SignupScreen>{

  final TextEditingController _firstnameCntrl = TextEditingController();
  final TextEditingController _lastnameCntrl = TextEditingController();
  final TextEditingController _emailaddressCntrl = TextEditingController();
  final TextEditingController _mobilenumberCntrl = TextEditingController();
  final TextEditingController _passwordCntrl = TextEditingController();
  final TextEditingController _confirmpasswordCntrl = TextEditingController();


  final FocusNode _firstNameNode = FocusNode();
  final FocusNode _lastNameNode = FocusNode();
  final FocusNode _emailaddressNode = FocusNode();
  final FocusNode _mobileNumberNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmpasswordNode = FocusNode();


  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Container(
         height: Get.height,
        decoration:   BoxDecoration(
          color:  themeController.currentTheme().bG
        ),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             WavyHeader(onBackTap: () {  },),
             const Center(
               child:  Padding(
                 padding: EdgeInsets.only(left: 46, right: 46),
                 child: Text(
                   "Sign Up",
                   style: TextStyle(
                       color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),
             const SizedBox(
               height: 50,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _firstnameCntrl,
                 myFocusNode: _firstNameNode,
                 hintText: "Enter First Name",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.text,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'First Name',
               ),
             ),
             const SizedBox(
               height: 15,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _lastnameCntrl,
                 myFocusNode: _lastNameNode,
                 hintText: "Enter Last Name",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.text,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'Last Name',
               ),
             ),
             const SizedBox(
               height: 15,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _emailaddressCntrl,
                 myFocusNode: _emailaddressNode,
                 hintText: "Enter Email Address",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.emailAddress,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'Email',
               ),
             ),
             const SizedBox(
               height: 15,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _mobilenumberCntrl,
                 myFocusNode: _mobileNumberNode,
                 hintText: "Enter Mobile Number",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.emailAddress,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'Mobile Number',
               ),
             ),
             const SizedBox(
               height: 15,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _passwordCntrl,
                 myFocusNode: _passwordNode,
                 hintText: "Enter Password",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.emailAddress,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'Password',
               ),
             ),
             const SizedBox(
               height: 15,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 46, right: 46),
               child: CountrySelectionTextField(
                 myController: _confirmpasswordCntrl,
                 myFocusNode: _confirmpasswordNode,
                 hintText: "ReEnter Confirm Password",
                 inputAction: TextInputAction.next,
                 inputType: TextInputType.emailAddress,
                 onSubmited: (str) {
                 }, onChanged: (String ) {  }, TitleText: 'Confirm Password',
               ),
             ),

             const SizedBox(
               height: 35,
             ),

             Center(
               child:
               SizedBox(
                 width: Get.width / 2, height: 60,
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
                 ), child: const Text("Signup",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                 ),),
             ),
             const SizedBox(
               height: 25,
             ),
             Padding(padding: const EdgeInsets.only(left: 30),child:
             Align(
                 child:
                 getSignupText()
             ))
           ],
         ),
       ),
      )),
    );
  }


  getSignupText(){
    return  RichText(text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children:  [
          const TextSpan(
            text: 'Already have Account?',
            style: TextStyle(color: Colors.grey,fontSize: 12,decoration: TextDecoration.none),
          ),
          TextSpan(
              text: ' Login',
              style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,decoration: TextDecoration.none),
              recognizer: TapGestureRecognizer()..onTap = () {
                print("OnTap"+"Signup");
                Get.toNamed(RouteName.loginscreen);
              }
          ),
        ]
    ));
  }

  checkValidation(){
    if(_firstnameCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter First Name");
    }else if(_lastnameCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter Last Name");
    }else if(_emailaddressCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter Email Address");
    }
    else if(_mobilenumberCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter Mobile Number");
    }else if(_passwordCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter Password");
    }
    else if(_confirmpasswordCntrl.text.toString() == ""){
      Utils.showSnackBar(context,"Validation", "Please Enter Confirm Password");
    }
    else if(_passwordCntrl.text.toString()  != _confirmpasswordCntrl.text.toString()){
      Utils.showSnackBar(context,"Validation", "Password Doesn't match");
    }
    else{
      Utils.showSnackBar(context,"Validation", "Success!");
    }
  }
}