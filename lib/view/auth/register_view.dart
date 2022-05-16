import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:fashion_ecommerce_app/core/constants/extensions/context_extension.dart';
import 'package:fashion_ecommerce_app/core/constants/style/text_styles.dart';
import 'package:fashion_ecommerce_app/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../products/widgets/buttons/custom_elevated_button.dart';
import '../../products/widgets/textfields/custom_textfield.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formKey;
    final TextEditingController _emailControler = TextEditingController();
    final TextEditingController _nameControler = TextEditingController();
    final TextEditingController _passwordControler = TextEditingController();
    String _email = _emailControler.text;
    String _password = _passwordControler.text;
    return Scaffold(
      body: _bodyRegisterWidget(context, formKey, _nameControler,
          _emailControler, _passwordControler, _email, _password),
    );
  }
}

Widget _bodyRegisterWidget(BuildContext context, formKey, _nameController,
        _emailControler, _passwordControler, _email, _password) =>
    SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: context.paddingLow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.height * 0.1,
              ),
              title(
                context,
                AppLocalizations.of(context).signUpTitle,
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              form(context, formKey, _nameController, _emailControler,
                  _passwordControler, _email, _password),
              textButton(context),
              SizedBox(
                height: context.height * 0.1,
              ),
              _registerButton(context),
              SizedBox(
                height: context.height * 0.12,
              ),
              text(context),
              socialButtons(context),
            ],
          ),
        ),
      ),
    );

Widget textButton(BuildContext context) => Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppLocalizations.of(context).alreadyhaveacc,
          style: TextStyles.fourteenpx(context, AppColor.black),
        ),
      ),
    );
Widget form(BuildContext context, formKey, _nameControler, _emailControler,
        _passwordControler, _email, _password) =>
    Form(
      child: Column(children: [
        SizedBox(
          height: context.height * 0.08,
          child: textFieldCustomWidget(context,
              title: AppLocalizations.of(context).name,
              height: context.height * 0.06,
              width: context.width * 0.9,
              controller: _nameControler),
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
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

Widget _registerButton(BuildContext context) => CustomElevatedButton(
      color: AppColor.primary,
      width: context.width * 0.8,
      onPressed: () {},
      borderRadius: 25,
      child: Text(
        AppLocalizations.of(context).signUpTitle.toUpperCase(),
        style: TextStyles.fourteenpx(context, AppColor.bg),
      ),
    );
