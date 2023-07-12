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
        child: LayoutBuilder(
          builder: (context, constraint) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 6,
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/images/app_logo.webp',
                      width: SizeConfig.blockWidth * 70,
                    ),
                    Container(
                      height: SizeConfig.blockHeight * 55,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: SizeConfig.blockHeight * 45,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FormHeader(text: 'Register'),
                                FormInputBox(
                                  controller: usernameController,
                                  text: 'Username',
                                ),
                                FormInputBox(
                                  controller: passwordController,
                                  text: 'Password',
                                ),
                                FormInputBox(
                                  controller: confirmPasswordController,
                                  text: 'Confirm Password',
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: inactiveColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.blockWidth * 4,
                                  ),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: SizedBox(),
                                    items: const [
                                      // TODO Make this dynamic from API
                                      DropdownMenuItem(
                                        child: Text('Ibadah Umum'),
                                      ),
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                                Button(
                                  text: 'Register',
                                  func: () {},
                                  isExpanded: true,
                                ),
                              ],
                            ),
                          ),
                          Divider(),
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
