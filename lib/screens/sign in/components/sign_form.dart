import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prototype/screens/Loginsuccess/Login_successScreen.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constraints.dart';
import '../../../sizeconfig.dart';
import '../../forgot  password/forgot_password.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FormError(errors: errors),
           
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember =value!;
                    });
                  },
                ),
                Text(" Remember me"),
                Spacer(),
                GestureDetector (
                  onTap: () => Navigator.pushNamed(context, ForgotPassword.routeName)  ,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            DefaultButton(
              text: "continue",
              // ignore: prefer_const_constructors
              press: () {
                if (_formKey.currentState!.validate()){
                  _formKey.currentState!.save();

                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);

                }
              })
                
          ],
            )
          
        );
        
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.remove(kEmailNullError);
            });
            
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
             
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kEmailNullError);
            });
            return"";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
              ),
              child: SvgPicture.asset("assets/icons/Mail.svg"),
            )
            )
            );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return "";
          } else if (value.length < 8 && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kShortPassError);
            });
            return "";
          }
          return null;
        },
        onChanged: (value) {
          if (value.isNotEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length > 8 && !errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          return null;
        },
        onSaved: (newValue) => password = newValue!,
        decoration: InputDecoration(
            labelText: "password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(
                  0,
                  getProportionateScreenWidth(20),
                  getProportionateScreenWidth(20),
                  getProportionateScreenWidth(20)),
              child: SvgPicture.asset("assets/icons/Lock.svg"),
            )
            )
            );
  }
}