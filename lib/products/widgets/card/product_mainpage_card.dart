import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:fashion_ecommerce_app/core/constants/extensions/context_extension.dart';
import 'package:fashion_ecommerce_app/core/constants/style/text_styles.dart';
import 'package:fashion_ecommerce_app/products/widgets/buttons/custom_icon_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCardMain extends StatelessWidget {
  String? src;
  String? brand;
  String? productName;
  String? price;
  double rating = 4.5;

  ProductCardMain(
      {Key? key,
      required this.src,
      required this.brand,
      required this.productName,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0))),
      height: context.height * 0.25,
      width: context.width * 0.35,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 70,
              child: Container(
                height: context.height * 0.15,
                width: context.width * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(src!), fit: BoxFit.cover)),
              )),
          favButtonMethod(context),
          ratingBarMethod(context),
          Positioned(
              bottom: 35,
              child: Text(brand!, style: TextStyles.elevenpx(context))),
          Positioned(
              bottom: 20,
              child: Text(productName!,
                  style: TextStyles.fourteenpx(context, AppColor.black))),
          Positioned(
              bottom: 5,
              child: Text(price!,
                  style: TextStyles.fourteenpx(context, AppColor.black))),
        ],
      ),
    );
  }
}

Positioned favButtonMethod(BuildContext context) {
  return Positioned(
      bottom: 50,
      right: -20,
      child: CustomIconButton(
          onPressed: () {},
          iconcolor: AppColor.grey,
          bgcolor: AppColor.bg,
          icon: Icons.favorite_border));
}

Positioned ratingBarMethod(BuildContext context) {
  return Positioned(
      bottom: 50,
      left: 0,
      child: SizedBox(
        width: 100,
        height: 15,
        // ignore: prefer_const_constructors
        child: RatingBar.builder(
            itemSize: 15,
            initialRating: 4.5,
            minRating: 0.5,
            direction: Axis.vertical,
            itemCount: 5,
            allowHalfRating: true,
            itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
            onRatingUpdate: (rating) {}),
      ));
}
