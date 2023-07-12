import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/route_config.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/button.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_header.dart';
import 'package:gkkb_paritbaru/utils/widgets/form_input_box.dart';
import 'package:gkkb_paritbaru/utils/widgets/gap.dart';

class LoginPageNew extends StatelessWidget {
  LoginPageNew({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockWidth * 6),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/app_logo.webp',
                        width: SizeConfig.blockWidth * 70,
                      ),
                      Container(
                        height: SizeConfig.blockHeight * 45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: SizeConfig.blockHeight * 38,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FormHeader(text: 'Login'),
                                  FormInputBox(
                                    controller: usernameController,
                                    text: 'Username',
                                  ),
                                  FormInputBox(
                                    controller: passwordController,
                                    text: 'Password',
                                  ),
                                  Button(
                                    isExpanded: true,
                                    text: 'Login',
                                    func: () => {
                                      Navigator.of(context)
                                          .pushNamed(RouteConfig.navRoute)
                                    },
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: RichText(
                                      text: TextSpan(
                                        style: regularFont.copyWith(
                                          fontSize: SizeConfig.blockWidth * 3.5,
                                          color: accentColor,
                                        ),
                                        text: 'Forgot Password',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Gap(),
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
                                      ..onTap = () {
                                        Navigator.of(context).pushNamed(
                                            RouteConfig.registerRoute);
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
      ),
    );
  }
}
