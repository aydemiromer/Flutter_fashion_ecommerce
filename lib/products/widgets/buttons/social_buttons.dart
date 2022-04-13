
import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:fashion_ecommerce_app/core/constants/images/images.dart';
import 'package:fashion_ecommerce_app/products/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fashion_ecommerce_app/core/constants/extensions/context_extension.dart';

// ignore: must_be_immutable
class GoogleSignIn extends CustomElevatedButton {
  GoogleSignIn({Key? key, required BuildContext context})
      : super(
            key: key,
            borderRadius: 24, 
            color: AppColor.bg,
            width: context.width * 0.2,
            onPressed: () {},
            child: Image.asset(
              AppImages.google,
            ));
}

// ignore: must_be_immutable
class FacebookSignIn extends CustomElevatedButton {
  FacebookSignIn({Key? key, required BuildContext context})
      : super(
            key: key,
            color: AppColor.bg,
            borderRadius: 24,
            width: context.width * 0.2,
            onPressed: () {},
            child: Image.asset(
              AppImages.facebook,
            ));
}
