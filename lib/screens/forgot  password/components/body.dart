import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/sizeconfig.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_acccount.dart';
import '../../../constraints.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.1),
              
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send\n you a link to your email account",
                textAlign: TextAlign.center,
              )  ,
              SizedBox(height: SizeConfig.screenHeight*0.1),
              forgotPasswordForm()
            ],
          ),
        ),
      ),
    );
  }
}
class forgotPasswordForm extends StatefulWidget {
  const forgotPasswordForm({super.key});
 
  @override
  State<forgotPasswordForm> createState() => _forgotPasswordFormState();
}





class _forgotPasswordFormState extends State<forgotPasswordForm> {
 final _formKey= GlobalKey<FormState>();
   List<String> errors = [];
    late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
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
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
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
            ),
            SizedBox(height: getProportionateScreenHeight(30),),
            FormError(errors:errors),
            SizedBox(height: SizeConfig.screenHeight*0.1,),
            DefaultButton(
              text: "Continue", 
            press:()
            {
              if (_formKey.currentState!.validate()){

              }
            },
            ),
            SizedBox(height: SizeConfig.screenHeight,),
            NoAccountText(),
            ]

      )
    );
  }
  }
