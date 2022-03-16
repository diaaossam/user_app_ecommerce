import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_ecommerce/main_layout/cubit/main_layout_cubit.dart';
import 'package:user_app_ecommerce/models/Product.dart';
import 'package:user_app_ecommerce/screens/main_screen/details/cubit/state.dart';
import '../../../shared/components/custom_button.dart';
import '../../../shared/helper/size_config.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';
import 'components/top_rounded_container.dart';
import 'cubit/details_cubit.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetialsCubit>(
      create: (context)=>DetialsCubit(),
      child: BlocConsumer<DetialsCubit,DetailsStates>(
        listener:(context,state) {},
        builder:(context,state) {
          return Scaffold(
            backgroundColor: Color(0xFFF5F6F9),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: CustomAppBar(rating: 3),
            ),
            body: Body(product: ProductModel(
                description: 'Descrption',
                id: 'dsadsadsa',
                price: 250,
                title: 'Diaa',
                isFavourite: false,
                isPopular: true,
                rating: 3,
                image: 'https://static.remove.bg/remove-bg-web/726c8211ef4fdb5ce44accdf843f9bab4d2a356a/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'
            )),
            bottomNavigationBar: TopRoundedContainer(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  bottom: getProportionateScreenWidth(40),
                  top: getProportionateScreenWidth(15),
                ),
                child: CustomButton(
                  text: "Add To Cart",
                  press: () {},
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

