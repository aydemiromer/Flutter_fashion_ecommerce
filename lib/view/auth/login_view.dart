import 'package:fashion_ecommerce_app/core/constants/extensions/context_extension.dart';
import 'package:fashion_ecommerce_app/products/widgets/buttons/custom_elevated_button.dart';
import 'package:fashion_ecommerce_app/products/widgets/textfields/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/constants/color/color.dart';
import '../../core/constants/style/text_styles.dart';
import '../../products/widgets/buttons/social_buttons.dart';

class LoginViewPage extends StatelessWidget {
  const LoginViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formKey;
    final TextEditingController _emailControler = TextEditingController();
    final TextEditingController _passwordControler = TextEditingController();
    String _email = _emailControler.text;
    String _password = _passwordControler.text;
    return Scaffold(
      body: body(context, formKey, _emailControler, _passwordControler, _email,
          _password),
    );
  }
}

// My Body Widget
Widget body(BuildContext context, formKey, _emailControler, _passwordControler,
        _email, _password) =>
    SafeArea(
        child: Padding(
      padding: context.paddingLow,
      child: Column(
        children: [
          SizedBox(height: context.height * 0.1),
          title(context,AppLocalizations.of(context).loginScreenTitle,),
          SizedBox(height: context.height * 0.06),
          form(context, formKey, _emailControler, _passwordControler, _email,
              _password),
          forgotPassword(context),
          SizedBox(height: context.height * 0.06),
          _loginbutton(context),
          SizedBox(height: context.height * 0.16),
          text(context),
          socialButtons(context),
        ],
      ),
    ));

// My Title Widget
Widget title(BuildContext context ,String text) => Container(
      alignment: Alignment.topLeft,
      child: Text(
      text, 
        
        textAlign: TextAlign.left,
        style: TextStyles.headline(context),
      ),
    );

// Form Widget

Widget form(BuildContext context, formKey, _emailControler, _passwordControler,
        _email, _password) =>
    Form(
      child: Column(children: [
        SizedBox(
          height: context.height * 0.08,
          child: textFieldCustomWidget(context,
              title: AppLocalizations.of(context).email,
              height: context.height * 0.06,
              width: context.width * 0.9,
              controller: _emailControler),
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
        SizedBox(
          height: context.height * 0.08,
          child: textFieldCustomWidget(context,
              title: AppLocalizations.of(context).password,
              height: context.height * 0.06,
              width: context.width * 0.9,
              controller: _passwordControler),
        ),
      ]),
    );

// My Forgot Password Text Button

Widget forgotPassword(BuildContext context) => Container(
      alignment: Alignment.topRight,
      child: TextButton(
        child: Text(
          AppLocalizations.of(context).forgotyourpassword,
          style: TextStyles.fourteenpx(context, AppColor.black),
        ),
        onPressed: () {},
      ),
    );

// My Login Button Widget
Widget _loginbutton(BuildContext context) => CustomElevatedButton(
      color: AppColor.primary,
      width: context.width * 0.8,
      onPressed: () {},
      borderRadius: 25,
      child: Text(
        AppLocalizations.of(context).loginScreenTitle.toUpperCase(),
        style: TextStyles.fourteenpx(context, AppColor.bg),
      ),
    );

// Widget Text Before Social Buttons

Widget text(BuildContext context) => Text(
      AppLocalizations.of(context).socialAccountLogin,
      style: TextStyles.fourteenpx(context, AppColor.black),
    );

// My Social Buttons Widget

Row socialButtons(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleSignIn(context: context),
        SizedBox(width: context.width * 0.1),
        FacebookSignIn(context: context),
      ],
    );
