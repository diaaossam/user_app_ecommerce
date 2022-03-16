import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app_ecommerce/shared/helper/size_config.dart';

import '../../../models/Product.dart';


class ProductDetailsScreen extends StatelessWidget {

  ProductModel ? product;


  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.bodyHeight*0.3,
              child: Image(
                image: NetworkImage('${product!.image}'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
            ),

          ],
        ),
      ),
    );
  }
}
