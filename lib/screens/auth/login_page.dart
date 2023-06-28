import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/widgets/button.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_header.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_input_box.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockWidth * 5,
            // vertical: 0,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.blockHeight * 8,
              ),
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
                      FormHeader(text: "Login"),
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
                      Button(text: 'Login', func: () => {}),
                      SizedBox(height: SizeConfig.blockHeight),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 0,
                            ),
                          ),
                          child: Text(
                            'Forgot Password',
                            style: regularFont.copyWith(
                              fontSize: SizeConfig.blockWidth * 3.5,
                              color: accentColor,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: SizeConfig.blockHeight * 1.5),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: regularFont.copyWith(
                            fontSize: SizeConfig.blockWidth * 3.5,
                            color: secondaryColor,
                          ),
                          children: [
                            TextSpan(text: "Don't have an account yet? "),
                            TextSpan(
                              text: "Register",
                              style: TextStyle(color: accentColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
