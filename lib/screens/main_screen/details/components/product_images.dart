import 'package:flutter/material.dart';

import '../../../../models/Product.dart';
import '../../../../shared/helper/size_config.dart';
import '../../../../shared/styles/colors.dart';


class ProductImages extends StatelessWidget {

  final ProductModel product;

  ProductImages({required this.product});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.bodyHeight*0.35,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://static.remove.bg/remove-bg-web/726c8211ef4fdb5ce44accdf843f9bab4d2a356a/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kPrimaryColor.withOpacity(1),
          ),
        )

    );
  }
}