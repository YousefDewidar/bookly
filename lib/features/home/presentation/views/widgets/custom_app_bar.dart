
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Image.asset(AssetsData.logo,height: 22),
      IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass))
    ],);
  }
}
