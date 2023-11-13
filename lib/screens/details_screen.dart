import 'package:flutter/material.dart';
import 'package:store/widgets/details/details_body.dart';
import '../../constans.dart';
import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(
          right: kDefaultPadding / 2,
        ),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
