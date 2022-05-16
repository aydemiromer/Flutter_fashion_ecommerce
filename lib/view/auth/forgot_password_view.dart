import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:fashion_ecommerce_app/core/constants/extensions/context_extension.dart';
import 'package:fashion_ecommerce_app/products/widgets/buttons/custom_elevated_button.dart';
import 'package:fashion_ecommerce_app/products/widgets/textfields/custom_textfield.dart';
import 'package:fashion_ecommerce_app/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formKey;
    final TextEditingController _emailControler = TextEditingController();
    return Scaffold(
      body: _bodyForgot(context, formKey, _emailControler),
    );
  }
}

Widget _bodyForgot(BuildContext context, formKey, _emailControler) => SafeArea(
      child: Padding(
        padding: context.paddingLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            backButton(context),
            SizedBox(
              height: context.height * 0.05,
            ),
            title(context, AppLocalizations.of(context).forgotpassword),
            SizedBox(
              height: context.height * 0.1,
            ),
            Text(AppLocalizations.of(context).forgotpasswordtext),
            SizedBox(
              height: context.height * 0.06,
            ),
            form(
              context,
              formKey,
              _emailControler,
            ),
            SizedBox(
              height: context.height * 0.06,
            ),
            sendButton(context)
          ],
        ),
      ),
    );

Widget form(BuildContext context, formKey, _emailControler) => Form(
    key: formKey,
    child: SizedBox(
      height: context.height * 0.08,
      child: textFieldCustomWidget(context,
          title: AppLocalizations.of(context).email,
          height: context.height * 0.06,
          width: context.width * 0.9),
    ));

Widget sendButton(BuildContext context) => CustomElevatedButton(
    child:
        Text(AppLocalizations.of(context).forgotpasswordbutton.toUpperCase()),
    borderRadius: 20.0,
    color: AppColor.errorred,
    width: context.width * 0.9,
    onPressed: () {});

Widget backButton(context) => Container(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
