import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/route_config.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/button.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_header.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_input_box.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockWidth * 5,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.blockHeight * 8),
              Image.asset(
                'assets/images/app_logo.webp',
                width: SizeConfig.blockWidth * 70,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormHeader(text: 'Register'),
                      SizedBox(height: SizeConfig.blockHeight * 1.5),
                      FormInputBox(
                        controller: usernameController,
                        text: "Username",
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 1.5),
                      FormInputBox(
                        controller: passwordController,
                        text: "Password",
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 1.5),
                      FormInputBox(
                        controller: confirmPasswordController,
                        text: "Confirm Password",
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 1.5),
                      // DropdownButton(items: [
                      //   DropdownMenuItem(child: Text('Ibadah Umum')),
                      //   DropdownMenuItem(child: Text('Ibadah Remaja')),
                      // ], onChanged: (val) {}),
                      // SizedBox(height: SizeConfig.blockHeight * 1.5),
                      Button(
                        text: 'Register',
                        func: () => {},
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 3),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: regularFont.copyWith(
                            fontSize: SizeConfig.blockWidth * 3.5,
                            color: secondaryColor,
                          ),
                          children: [
                            TextSpan(text: "Already have an account? "),
                            TextSpan(
                              text: "Login",
                              style: TextStyle(color: accentColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context)
                                      .pushNamed(RouteConfig.loginRoute);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
