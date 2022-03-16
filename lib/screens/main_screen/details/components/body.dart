import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_ecommerce/screens/main_screen/details/cubit/details_cubit.dart';
import 'package:user_app_ecommerce/screens/main_screen/details/cubit/state.dart';
import '../../../../models/Product.dart';
import '../../../../shared/components/rounded_icon_btn.dart';
import '../../../../shared/helper/size_config.dart';
import '../../../../shared/styles/colors.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final ProductModel product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetialsCubit, DetailsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        DetialsCubit cubit = DetialsCubit.get(context);
        return ListView(
          children: [
            ProductImages(
              product: product,
            ),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(30.0),),
                        Text(
                         state is  ChangeProudctNumber? '${state.newPrice}' :'${product.price} EGP',
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(35),
                              color: Colors.black),
                        ),
                        SizedBox(height: getProportionateScreenHeight(30.0),),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: getProportionateScreenHeight(135)),
                          child: Row(
                            children: [
                              RoundedIconBtn(
                                icon: Icons.remove,
                                press: () {
                                  cubit.productSelectedNumberMinus(product.price!);
                                },
                              ),
                              SizedBox(width: getProportionateScreenWidth(20)),
                              Text(
                                '${cubit.numberOfProducts}',
                                style: TextStyle(
                                    fontSize:
                                        getProportionateScreenHeight(25.0),
                                    color: kPrimaryColor),
                              ),
                              SizedBox(width: getProportionateScreenWidth(20)),
                              RoundedIconBtn(
                                icon: Icons.add,
                                showShadow: true,
                                press: () {
                                  cubit.productSelectedNumberAdd(product.price!);
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
